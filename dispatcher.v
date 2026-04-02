module dispatcher #(
    parameter NUM_PIPELINES = 4,
    parameter WIDTH = 32,
    parameter IDX_WIDTH = 4
)(
    input clk,
    input rst,

    input valid_in,
    input [WIDTH-1:0] xi,
    input [WIDTH-1:0] yi,
    input [WIDTH-1:0] xj,
    input [WIDTH-1:0] yj,
    input [IDX_WIDTH-1:0] i_in,
    input [IDX_WIDTH-1:0] j_in,

    output reg [NUM_PIPELINES-1:0]           valid_out,
    output reg [NUM_PIPELINES*WIDTH-1:0]     xi_bus,
    output reg [NUM_PIPELINES*WIDTH-1:0]     yi_bus,
    output reg [NUM_PIPELINES*WIDTH-1:0]     xj_bus,
    output reg [NUM_PIPELINES*WIDTH-1:0]     yj_bus,
    output reg [NUM_PIPELINES*IDX_WIDTH-1:0] i_bus,
    output reg [NUM_PIPELINES*IDX_WIDTH-1:0] j_bus
);

reg [$clog2(NUM_PIPELINES)-1:0] pipeline_id;

always @(posedge clk) begin
    if (rst) begin
        pipeline_id <= 0;
        valid_out   <= 0;
        xi_bus      <= 0;
        yi_bus      <= 0;
        xj_bus      <= 0;
        yj_bus      <= 0;
        i_bus       <= 0;
        j_bus       <= 0;
    end else begin
        valid_out <= 0;

        if (valid_in) begin
            valid_out[pipeline_id] <= 1'b1;

            xi_bus[pipeline_id*WIDTH +: WIDTH]     <= xi;
            yi_bus[pipeline_id*WIDTH +: WIDTH]     <= yi;
            xj_bus[pipeline_id*WIDTH +: WIDTH]     <= xj;
            yj_bus[pipeline_id*WIDTH +: WIDTH]     <= yj;
            i_bus[pipeline_id*IDX_WIDTH +: IDX_WIDTH] <= i_in;
            j_bus[pipeline_id*IDX_WIDTH +: IDX_WIDTH] <= j_in;

            pipeline_id <= (pipeline_id == NUM_PIPELINES-1) ? 0 : pipeline_id + 1;
        end
    end
end

endmodule
