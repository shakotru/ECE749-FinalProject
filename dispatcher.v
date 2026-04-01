module dispatcher #(
    parameter NUM_PIPELINES = 4,
    parameter WIDTH = 32
)(
    input clk,
    input rst,

    input valid_in,
    input [WIDTH-1:0] xi, yi, xj, yj,

    output reg [NUM_PIPELINES-1:0] valid_out,
    output reg [NUM_PIPELINES*WIDTH-1:0] xi_bus,
    output reg [NUM_PIPELINES*WIDTH-1:0] yi_bus,
    output reg [NUM_PIPELINES*WIDTH-1:0] xj_bus,
    output reg [NUM_PIPELINES*WIDTH-1:0] yj_bus
);

reg [$clog2(NUM_PIPELINES)-1:0] pipeline_id;

integer i;

always @(posedge clk) begin
    if (rst) begin
        pipeline_id <= 0;
        valid_out <= 0;
    end else begin
        // Clear valids
        valid_out <= 0;

        if (valid_in) begin
            // Assign to one pipeline
            valid_out[pipeline_id] <= 1;

            xi_bus[pipeline_id*WIDTH +: WIDTH] <= xi;
            yi_bus[pipeline_id*WIDTH +: WIDTH] <= yi;
            xj_bus[pipeline_id*WIDTH +: WIDTH] <= xj;
            yj_bus[pipeline_id*WIDTH +: WIDTH] <= yj;

            // Next pipeline, up to a max of NUM_PIPELINES-1
            pipeline_id <= (pipeline_id == NUM_PIPELINES-1) ? 0:pipeline_id+1;
        end
    end
end

endmodule
