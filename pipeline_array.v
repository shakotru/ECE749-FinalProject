module pipeline_array #(
    parameter NUM_PIPELINES = 4,
    parameter WIDTH = 32
)(
    input clk,
    input rst,

    input [NUM_PIPELINES-1:0] valid_in,
    input [NUM_PIPELINES*WIDTH-1:0] xi,
    input [NUM_PIPELINES*WIDTH-1:0] yi,
    input [NUM_PIPELINES*WIDTH-1:0] xj,
    input [NUM_PIPELINES*WIDTH-1:0] yj,

    output [NUM_PIPELINES-1:0] valid_out,
    output [NUM_PIPELINES*WIDTH-1:0] force_out
);

genvar k;
generate
    for (k = 0; k < NUM_PIPELINES; k = k + 1) begin : PIPELINES

        force_pipeline #(.WIDTH(WIDTH)) fp (
            .clk(clk),
            .rst(rst),

            .valid_in(valid_in[k]),
            .xi(xi[k*WIDTH +: WIDTH]),
            .yi(yi[k*WIDTH +: WIDTH]),
            .xj(xj[k*WIDTH +: WIDTH]),
            .yj(yj[k*WIDTH +: WIDTH]),

            .valid_out(valid_out[k]),
            .force_out(force_out[k*WIDTH +: WIDTH])
        );

    end
endgenerate

endmodule
