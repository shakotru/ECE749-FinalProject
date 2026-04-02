module md_top #(
    parameter N = 16,
    parameter WIDTH = 32,
    parameter NUM_PIPELINES = 4,
    parameter IDX_WIDTH = $clog2(N)
)(
    input clk,
    input rst,
    input start,
    output done,

    output [NUM_PIPELINES-1:0]           pipe_valid_out,
    output [NUM_PIPELINES*WIDTH-1:0]     force_out_bus,
    output [NUM_PIPELINES*IDX_WIDTH-1:0] out_i_bus,
    output [NUM_PIPELINES*IDX_WIDTH-1:0] out_j_bus
);

// 1. Unsigned position memory
reg [WIDTH-1:0] pos_x [0:N-1];
reg [WIDTH-1:0] pos_y [0:N-1];

integer idx;
initial begin
    for (idx = 0; idx < N; idx = idx + 1) begin
        pos_x[idx] = idx * 10;
        pos_y[idx] = idx * 5;
    end
end

// 2. Pair generator
wire pg_valid;
wire [IDX_WIDTH-1:0] i_idx, j_idx;
wire pg_done;

pair_generator #(
    .N(N),
    .WIDTH(WIDTH)
) pg (
    .clk(clk),
    .rst(rst),
    .enable(start),
    .valid_out(pg_valid),
    .i_out(i_idx),
    .j_out(j_idx),
    .done(pg_done)
);

assign done = pg_done;

// 3. Combinatorial position lookup
wire [WIDTH-1:0] xi_comb, yi_comb, xj_comb, yj_comb;
assign xi_comb = pg_valid ? pos_x[i_idx] : {WIDTH{1'b0}};
assign yi_comb = pg_valid ? pos_y[i_idx] : {WIDTH{1'b0}};
assign xj_comb = pg_valid ? pos_x[j_idx] : {WIDTH{1'b0}};
assign yj_comb = pg_valid ? pos_y[j_idx] : {WIDTH{1'b0}};

// 4. Dispatcher
wire [NUM_PIPELINES-1:0]           disp_valid;
wire [NUM_PIPELINES*WIDTH-1:0]     xi_bus, yi_bus, xj_bus, yj_bus;
wire [NUM_PIPELINES*IDX_WIDTH-1:0] disp_i_bus, disp_j_bus;

dispatcher #(
    .NUM_PIPELINES(NUM_PIPELINES),
    .WIDTH(WIDTH),
    .IDX_WIDTH(IDX_WIDTH)
) disp (
    .clk(clk),
    .rst(rst),
    .valid_in(pg_valid),
    .xi(xi_comb),
    .yi(yi_comb),
    .xj(xj_comb),
    .yj(yj_comb),
    .i_in(i_idx),
    .j_in(j_idx),
    .valid_out(disp_valid),
    .xi_bus(xi_bus),
    .yi_bus(yi_bus),
    .xj_bus(xj_bus),
    .yj_bus(yj_bus),
    .i_bus(disp_i_bus),
    .j_bus(disp_j_bus)
);

// 5. Pipeline array
pipeline_array #(
    .NUM_PIPELINES(NUM_PIPELINES),
    .WIDTH(WIDTH),
    .IDX_WIDTH(IDX_WIDTH)
) pipes (
    .clk(clk),
    .rst(rst),
    .valid_in(disp_valid),
    .xi(xi_bus),
    .yi(yi_bus),
    .xj(xj_bus),
    .yj(yj_bus),
    .i_bus(disp_i_bus),
    .j_bus(disp_j_bus),
    .valid_out(pipe_valid_out),
    .force_out(force_out_bus),
    .out_i_bus(out_i_bus),
    .out_j_bus(out_j_bus)
);

// 6. Interaction counter
reg [31:0] interaction_count;
reg [31:0] pipe_valid_count;
integer m;

always @(*) begin
    pipe_valid_count = 0;
    for (m = 0; m < NUM_PIPELINES; m = m + 1)
        pipe_valid_count = pipe_valid_count + pipe_valid_out[m];
end

always @(posedge clk) begin
    if (rst)
        interaction_count <= 0;
    else
        interaction_count <= interaction_count + pipe_valid_count;
end

endmodule
