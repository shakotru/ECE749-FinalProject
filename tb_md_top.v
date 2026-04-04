`timescale 1ns/1ps

module tb_md_top;

//////////////////////////////////////////////////
// PARAMETERS
//////////////////////////////////////////////////

parameter N             = 16;
parameter WIDTH         = 32;
parameter NUM_PIPELINES = 4;
parameter IDX_WIDTH     = $clog2(N);

localparam TOTAL_PAIRS  = N * (N - 1) / 2;

//////////////////////////////////////////////////
// SIGNALS
//////////////////////////////////////////////////

reg clk;
reg rst;
reg start;
wire done;

wire [NUM_PIPELINES-1:0]           pipe_valid;
wire [NUM_PIPELINES*WIDTH-1:0]     force_out_bus;
wire [NUM_PIPELINES*IDX_WIDTH-1:0] out_i_bus;
wire [NUM_PIPELINES*IDX_WIDTH-1:0] out_j_bus;
wire [NUM_PIPELINES-1:0]           overflow_bus;

integer total_cycles;
integer total_pairs;
integer cycle_count;
integer start_cycle;
integer end_cycle;
integer timeout_count;

integer pass_count;
integer mismatch_count;
integer missing_golden_count;
integer duplicate_pair_count;
integer overflow_event_count;

//////////////////////////////////////////////////
// GOLDEN STORAGE
//////////////////////////////////////////////////

integer    golden_i     [0:TOTAL_PAIRS-1];
integer    golden_j     [0:TOTAL_PAIRS-1];
reg [31:0] golden_force [0:TOTAL_PAIRS-1];
reg        golden_seen  [0:TOTAL_PAIRS-1];

integer golden_idx;
integer golden_file;
integer total_pairs_checked;
reg     golden_loaded;

//////////////////////////////////////////////////
// DEBUG POSITION STORAGE
//////////////////////////////////////////////////

reg [WIDTH-1:0] pos_x [0:N-1];
reg [WIDTH-1:0] pos_y [0:N-1];

//////////////////////////////////////////////////
// TEMP VARIABLES
//////////////////////////////////////////////////

integer p;
integer load_gi;
integer load_gj;
integer load_r;
integer load_k;
reg [31:0] load_gf;

integer lane;
integer obs_i;
integer obs_j;
integer match_idx;
integer check_k;
reg [31:0] dut_force;

//////////////////////////////////////////////////
// DUT
//////////////////////////////////////////////////

md_top #(
    .N(N),
    .WIDTH(WIDTH),
    .NUM_PIPELINES(NUM_PIPELINES),
    .IDX_WIDTH(IDX_WIDTH)
) dut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .done(done),
    .pipe_valid_out(pipe_valid),
    .force_out_bus(force_out_bus),
    .out_i_bus(out_i_bus),
    .out_j_bus(out_j_bus),
    .overflow_out(overflow_bus)
);

//////////////////////////////////////////////////
// CLOCK GENERATION + WAVEFORM DUMP
//////////////////////////////////////////////////

initial begin
    $dumpfile("waves.vcd");
    $dumpvars(0, tb_md_top);
    clk = 0;
    forever #5 clk = ~clk;
end

//////////////////////////////////////////////////
// CYCLE COUNTER
//////////////////////////////////////////////////

always @(posedge clk) begin
    cycle_count <= cycle_count + 1;
end

//////////////////////////////////////////////////
// LOAD PARTICLE POSITIONS
//////////////////////////////////////////////////

initial begin
    $readmemh("./00_testbed/current/positions_x.txt", pos_x);
    $readmemh("./00_testbed/current/positions_y.txt", pos_y);

    $display("[TB] Loaded particle positions:");
    for (p = 0; p < N; p = p + 1) begin
        $display("  particle[%0d]: x=0x%h  y=0x%h", p, pos_x[p], pos_y[p]);
    end
end

//////////////////////////////////////////////////
// LOAD GOLDEN FILE
//////////////////////////////////////////////////

initial begin
    golden_loaded       = 0;
    golden_idx          = 0;
    total_pairs_checked = 0;

    for (load_k = 0; load_k < TOTAL_PAIRS; load_k = load_k + 1) begin
        golden_i[load_k]     = -1;
        golden_j[load_k]     = -1;
        golden_force[load_k] = 32'h00000000;
        golden_seen[load_k]  = 1'b0;
    end

    golden_file = $fopen("./00_testbed/current/golden_forces.txt", "r");
    if (golden_file == 0) begin
        $display("[ERROR] Cannot open golden_forces.txt");
        $finish;
    end

    load_r = 3;
    while ((golden_idx < TOTAL_PAIRS) && (load_r == 3)) begin
        load_r = $fscanf(golden_file, "%d %d %h\n", load_gi, load_gj, load_gf);

        if (load_r == 3) begin
            golden_i[golden_idx]     = load_gi;
            golden_j[golden_idx]     = load_gj;
            golden_force[golden_idx] = load_gf;
            golden_idx = golden_idx + 1;
        end
    end

    $fclose(golden_file);

    if ((load_r != -1) && (load_r != 3)) begin
        $display("[ERROR] Bad golden file format near entry %0d", golden_idx);
        $finish;
    end

    $display("[GOLDEN] Loaded %0d golden entries", golden_idx);

    if (golden_idx != TOTAL_PAIRS) begin
        $display("[WARNING] Expected %0d entries but loaded %0d",
                 TOTAL_PAIRS, golden_idx);
    end

    golden_loaded = 1;
end

//////////////////////////////////////////////////
// DUT DEBUG PRINT
//////////////////////////////////////////////////

always @(posedge clk) begin
    $display("[DUT] rst=%b start=%b done=%b cycle=%0d",
             rst, start, done, cycle_count);
end

//////////////////////////////////////////////////
// OVERFLOW MONITOR
//////////////////////////////////////////////////

always @(posedge clk) begin
    if (!rst) begin
        for (lane = 0; lane < NUM_PIPELINES; lane = lane + 1) begin
            if (pipe_valid[lane] && overflow_bus[lane]) begin
                overflow_event_count = overflow_event_count + 1;
                $display("[OVERFLOW] cycle=%0d lane=%0d pair=(%0d,%0d)",
                         cycle_count,
                         lane,
                         out_i_bus[lane*IDX_WIDTH +: IDX_WIDTH],
                         out_j_bus[lane*IDX_WIDTH +: IDX_WIDTH]);
            end
        end
    end
end

//////////////////////////////////////////////////
// GOLDEN CHECKER
//////////////////////////////////////////////////

always @(posedge clk) begin
    if (golden_loaded && !rst) begin
        for (lane = 0; lane < NUM_PIPELINES; lane = lane + 1) begin
            if (pipe_valid[lane]) begin
                obs_i     = out_i_bus[lane*IDX_WIDTH +: IDX_WIDTH];
                obs_j     = out_j_bus[lane*IDX_WIDTH +: IDX_WIDTH];
                dut_force = force_out_bus[lane*WIDTH +: WIDTH];
                match_idx = -1;

                for (check_k = 0; check_k < golden_idx; check_k = check_k + 1) begin
                    if ((match_idx == -1) &&
                        (golden_i[check_k] == obs_i) &&
                        (golden_j[check_k] == obs_j)) begin
                        match_idx = check_k;
                    end
                end

                if (match_idx == -1) begin
                    missing_golden_count = missing_golden_count + 1;
                    $display("[ERROR] No golden entry found for pair (%0d,%0d)",
                             obs_i, obs_j);
                end else begin
                    if (golden_seen[match_idx]) begin
                        duplicate_pair_count = duplicate_pair_count + 1;
                        $display("[ERROR] Pair (%0d,%0d) already checked once",
                                 obs_i, obs_j);
                    end else begin
                        golden_seen[match_idx] = 1'b1;
                        total_pairs_checked = total_pairs_checked + 1;
                    end

                    if (dut_force !== golden_force[match_idx]) begin
                        mismatch_count = mismatch_count + 1;
                        $display("[MISMATCH] pair=(%0d,%0d) lane=%0d overflow=%b expected=0x%h got=0x%h",
                                 obs_i, obs_j, lane, overflow_bus[lane],
                                 golden_force[match_idx], dut_force);
                    end else begin
                        pass_count = pass_count + 1;
                        $display("[PASS] pair=(%0d,%0d) lane=%0d overflow=%b force=0x%h",
                                 obs_i, obs_j, lane, overflow_bus[lane], dut_force);
                    end
                end
            end
        end
    end
end

//////////////////////////////////////////////////
// TEST SEQUENCE
//////////////////////////////////////////////////

initial begin
    rst                  = 1;
    start                = 0;
    cycle_count          = 0;
    timeout_count        = 0;
    pass_count           = 0;
    mismatch_count       = 0;
    missing_golden_count = 0;
    duplicate_pair_count = 0;
    overflow_event_count = 0;

    $display("[TB] Cycle %0d: rst=1 start=%b done=%b", cycle_count, start, done);

    #20;
    rst = 0;
    $display("[TB] Cycle %0d: rst=0 start=%b done=%b", cycle_count, start, done);

    #10;
    start       = 1;
    start_cycle = cycle_count;
    $display("[TB] Cycle %0d: start=1 done=%b", cycle_count, done);

    #10;
    start = 0;
    $display("[TB] Cycle %0d: start=0", cycle_count);

    while ((total_pairs_checked < TOTAL_PAIRS) && (timeout_count < 1000)) begin
        @(posedge clk);
        timeout_count = timeout_count + 1;
    end

    end_cycle = cycle_count;
    total_cycles = end_cycle - start_cycle;
    total_pairs  = TOTAL_PAIRS;

    $display("=======================================");
    $display("MDGRAPE-STYLE SIMULATION RESULTS");
    $display("N                        = %0d", N);
    $display("Pipelines                = %0d", NUM_PIPELINES);
    $display("Total pairs              = %0d", total_pairs);
    $display("Total cycles             = %0d", total_cycles);
    $display("Throughput (pairs/cycle) = %f",
             total_pairs * 1.0 / total_cycles);
    $display("Done                     = %b", done);
    $display("Pass count               = %0d", pass_count);
    $display("Mismatch count           = %0d", mismatch_count);
    $display("Missing golden count     = %0d", missing_golden_count);
    $display("Duplicate pair count     = %0d", duplicate_pair_count);
    $display("Overflow events          = %0d", overflow_event_count);
    $display("=======================================");

    if (timeout_count >= 1000) begin
        $display("*** TIMEOUT: Only checked %0d/%0d pairs ***",
                 total_pairs_checked, total_pairs);
    end else if (total_pairs_checked == total_pairs) begin
        $display("*** ALL %0d PAIRS CHECKED ***", total_pairs_checked);
    end else begin
        $display("*** WARNING: Only %0d/%0d pairs checked ***",
                 total_pairs_checked, total_pairs);
    end

    if (mismatch_count == 0 && missing_golden_count == 0 && duplicate_pair_count == 0)
        $display("*** TEST PASSED ***");
    else
        $display("*** TEST FAILED ***");

    #20;
    $finish;
end

endmodule
