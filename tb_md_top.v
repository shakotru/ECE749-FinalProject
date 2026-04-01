`timescale 1ns/1ps

module tb_md_top;

//////////////////////////////////////////////////
// PARAMETERS
//////////////////////////////////////////////////

parameter N = 16;
parameter WIDTH = 32;
parameter NUM_PIPELINES = 4;

//////////////////////////////////////////////////
// SIGNALS
//////////////////////////////////////////////////

reg clk;
reg rst;
reg start;

wire done;

integer total_cycles;
integer total_pairs;

//////////////////////////////////////////////////
// DUT
//////////////////////////////////////////////////

md_top #(
    .N(N),
    .WIDTH(WIDTH),
    .NUM_PIPELINES(NUM_PIPELINES)
) dut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .done(done)
);

// FORCE PRINT - add this immediately after DUT
always @(posedge clk) begin
    $display("[DUT] clk edge, rst=%b start=%b done=%b cycle=%0d", rst, start, done, cycle_count);
    if (rst) $display("[DUT] DUT in reset");
    if (start) $display("[DUT] DUT saw start pulse");
end

//////////////////////////////////////////////////
// CLOCK GENERATION
//////////////////////////////////////////////////

initial begin

    $dumpfile("waves.vcd");     // VCD format (universal)
    $dumpvars(0, tb_md_top);    // Dump everything under tb_md_top
    clk = 0;
    forever #5 clk = ~clk;  // 100 MHz clock
end

//////////////////////////////////////////////////
// CYCLE COUNTER
//////////////////////////////////////////////////

integer cycle_count;
integer start_cycle;
integer end_cycle;

always @(posedge clk) begin
    cycle_count <= cycle_count + 1;
end

//////////////////////////////////////////////////
// TEST SEQUENCE
//////////////////////////////////////////////////

initial begin
    // Initialize
    rst = 1;
    start = 0;
    cycle_count = 0;
    $display("[TB] Cycle %0d: rst=1, start=%b, done=%b", cycle_count, start, done);


    #20;
    rst = 0;
    $display("[TB] Cycle %0d: rst=0, start=%b, done=%b", cycle_count, start, done);

    // Start computation
    #10;
    start = 1;
    start_cycle = cycle_count;
    $display("[TB] Cycle %0d: start pulsed=1, done=%b", cycle_count, done);

    #10;
    start = 0;  // pulse start
    $display("[TB] Cycle %0d: start=0, waiting for done...", cycle_count);

    // Wait for completion
    wait(done == 1);
    end_cycle = cycle_count;

     // Add timeout protection
    repeat(1000) begin  // max 1000 cycles
        #10;  // wait 1 cycle
        if (done) begin
            	$display("[TB] Done asserted at cycle %0d!", cycle_count);

		total_cycles = end_cycle - start_cycle;
	        total_pairs = (N * (N - 1)) / 2;
	        $display("=======================================");
    		$display("MDGRAPE-STYLE SIMULATION RESULTS");
    		$display("N                 = %0d", N);
    		$display("Pipelines         = %0d", NUM_PIPELINES);
	    	$display("Total pairs       = %0d", total_pairs);
    		$display("Total cycles      = %0d", total_cycles);
    		$display("Throughput (pairs/cycle) = %f",
             		total_pairs * 1.0 / total_cycles);
    		$display("=======================================");
		$finish;

            
        end
        if (cycle_count > 500) begin
            $display("[TB] TIMEOUT! done never asserted after %0d cycles", cycle_count);

		total_cycles = end_cycle - start_cycle;
	        total_pairs = (N * (N - 1)) / 2;
		$display("[TB] Done asserted at cycle %0d!", cycle_count);
	        $display("=======================================");
    		$display("MDGRAPE-STYLE SIMULATION RESULTS");
    		$display("N                 = %0d", N);
    		$display("Pipelines         = %0d", NUM_PIPELINES);
	    	$display("Total pairs       = %0d", total_pairs);
    		$display("Total cycles      = %0d", total_cycles);
    		$display("Throughput (pairs/cycle) = %f",
             		total_pairs * 1.0 / total_cycles);
    		$display("=======================================");
            $finish;
        end
    end

    //////////////////////////////////////////////////
    // RESULTS
    //////////////////////////////////////////////////


    total_cycles = end_cycle - start_cycle;
    total_pairs = (N * (N - 1)) / 2;

    $display("=======================================");
    $display("MDGRAPE-STYLE SIMULATION RESULTS");
    $display("N                 = %0d", N);
    $display("Pipelines         = %0d", NUM_PIPELINES);
    $display("Total pairs       = %0d", total_pairs);
    $display("Total cycles      = %0d", total_cycles);
    $display("Throughput (pairs/cycle) = %f",
             total_pairs * 1.0 / total_cycles);
    $display("=======================================");

    #20;
    $finish;
end

endmodule
