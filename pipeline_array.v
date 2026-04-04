`timescale 1ns/1ps

module pipeline_array #(
    parameter NUM_PIPELINES = 4,
    parameter WIDTH = 32,
    parameter IDX_WIDTH = 4
)(
    input clk,
    input rst,
    input  [NUM_PIPELINES-1:0]           valid_in,
    input  [NUM_PIPELINES*WIDTH-1:0]     xi,
    input  [NUM_PIPELINES*WIDTH-1:0]     yi,
    input  [NUM_PIPELINES*WIDTH-1:0]     xj,
    input  [NUM_PIPELINES*WIDTH-1:0]     yj,
    input  [NUM_PIPELINES*IDX_WIDTH-1:0] i_bus,
    input  [NUM_PIPELINES*IDX_WIDTH-1:0] j_bus,

    output [NUM_PIPELINES-1:0]           valid_out,
    output [NUM_PIPELINES*WIDTH-1:0]     force_out,
    output [NUM_PIPELINES*IDX_WIDTH-1:0] out_i_bus,
    output [NUM_PIPELINES*IDX_WIDTH-1:0] out_j_bus,
    output [NUM_PIPELINES-1:0]           overflow_out
);

genvar p;
generate
    for (p = 0; p < NUM_PIPELINES; p = p + 1) begin : GEN_PIPE
        force_pipeline #(
            .WIDTH(WIDTH),
            .IDX_WIDTH(IDX_WIDTH)
        ) fp (
            .clk(clk),
            .rst(rst),
            .valid_in(valid_in[p]),
            .xi(xi[p*WIDTH +: WIDTH]),
            .yi(yi[p*WIDTH +: WIDTH]),
            .xj(xj[p*WIDTH +: WIDTH]),
            .yj(yj[p*WIDTH +: WIDTH]),
            .i_in(i_bus[p*IDX_WIDTH +: IDX_WIDTH]),
            .j_in(j_bus[p*IDX_WIDTH +: IDX_WIDTH]),
            .valid_out(valid_out[p]),
            .force_out(force_out[p*WIDTH +: WIDTH]),
            .i_out(out_i_bus[p*IDX_WIDTH +: IDX_WIDTH]),
            .j_out(out_j_bus[p*IDX_WIDTH +: IDX_WIDTH]),
            .overflow_out(overflow_out[p])
        );
    end
endgenerate

endmodule
