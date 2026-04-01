module md_top #(
    parameter N = 16,
    parameter WIDTH = 32,
    parameter NUM_PIPELINES = 4
)(
    input clk,
    input rst,
    input start,

    output done
);

//////////////////////////////////////////////////
// 1. Position Memory
//////////////////////////////////////////////////

reg [WIDTH-1:0] pos_x [0:N-1];
reg [WIDTH-1:0] pos_y [0:N-1];

// Initialize positions (for simulation)
integer idx;
initial begin
    for (idx = 0; idx < N; idx = idx + 1) begin
        pos_x[idx] = idx * 10;
        pos_y[idx] = idx * 5;
    end
end

//////////////////////////////////////////////////
// 2. Pair Generator
//////////////////////////////////////////////////

wire pg_valid;
wire [$clog2(N)-1:0] i_idx, j_idx;
wire pg_done;

pair_generator #(.N(N)) pg (
    .clk(clk),
    .rst(rst),
    .enable(start),

    .valid_out(pg_valid),
    .i_out(i_idx),
    .j_out(j_idx),
    .done(pg_done)
);

assign done = pg_done;

//////////////////////////////////////////////////
// 3. Fetch Positions
//////////////////////////////////////////////////

reg [WIDTH-1:0] xi, yi, xj, yj;

always @(posedge clk) begin
    if (pg_valid) begin
        xi <= pos_x[i_idx];
        yi <= pos_y[i_idx];
        xj <= pos_x[j_idx];
        yj <= pos_y[j_idx];
    end
end

//////////////////////////////////////////////////
// 4. Dispatcher
//////////////////////////////////////////////////

wire [NUM_PIPELINES-1:0] disp_valid;
wire [NUM_PIPELINES*WIDTH-1:0] xi_bus, yi_bus, xj_bus, yj_bus;

dispatcher #(
    .NUM_PIPELINES(NUM_PIPELINES),
    .WIDTH(WIDTH)
) disp (
    .clk(clk),
    .rst(rst),

    .valid_in(pg_valid),
    .xi(xi),
    .yi(yi),
    .xj(xj),
    .yj(yj),
    //.xi(pos_x[i_idx]),
    //.yi(pos_y[i_idx]),
    //.xj(pos_x[i_idx]),
    //.yj(pos_y[i_idx]),

    .valid_out(disp_valid),
    .xi_bus(xi_bus),
    .yi_bus(yi_bus),
    .xj_bus(xj_bus),
    .yj_bus(yj_bus)
);

//////////////////////////////////////////////////
// 5. Pipeline Array
//////////////////////////////////////////////////

wire [NUM_PIPELINES-1:0] pipe_valid_out;
wire [NUM_PIPELINES*WIDTH-1:0] force_out_bus;

pipeline_array #(
    .NUM_PIPELINES(NUM_PIPELINES),
    .WIDTH(WIDTH)
) pipes (
    .clk(clk),
    .rst(rst),

    .valid_in(disp_valid),
    .xi(xi_bus),
    .yi(yi_bus),
    .xj(xj_bus),
    .yj(yj_bus),

    .valid_out(pipe_valid_out),
    .force_out(force_out_bus)
);

//////////////////////////////////////////////////
// 6. Result Counter (for performance measurement)
//////////////////////////////////////////////////

reg [31:0] interaction_count;

always @(posedge clk) begin
    if (rst) begin
        interaction_count <= 0;
    end else begin
        interaction_count <= interaction_count + 
            pipe_valid_out[0] +
            pipe_valid_out[1] +
            pipe_valid_out[2] +
            pipe_valid_out[3];
    end
end

endmodule
