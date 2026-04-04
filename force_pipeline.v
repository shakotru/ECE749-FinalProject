`timescale 1ns/1ps

module force_pipeline #(
    parameter WIDTH = 32,
    parameter IDX_WIDTH = 4,
    parameter LUT_BITS = 10,
    parameter LUT_MAX = 200
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

    output reg valid_out,
    output reg [WIDTH-1:0] force_out,
    output reg [IDX_WIDTH-1:0] i_out,
    output reg [IDX_WIDTH-1:0] j_out,
    output reg overflow_out
);

// Stage 1
reg signed [WIDTH-1:0] dx_s1, dy_s1;
reg                    valid_s1;
reg [IDX_WIDTH-1:0]    i_s1, j_s1;

// Stage 2
reg [WIDTH-1:0]        r2_s2;
reg                    valid_s2;
reg [IDX_WIDTH-1:0]    i_s2, j_s2;
reg                    overflow_s2;

localparam LUT_DEPTH = 1 << LUT_BITS;

reg [WIDTH-1:0] g_lut [0:LUT_DEPTH-1];

reg signed [WIDTH:0] dx_ext, dy_ext;
reg [2*WIDTH+1:0] dx_sq_full, dy_sq_full, r2_full;

integer k;
real w, g;
initial begin
    g_lut[0] = 32'hFFFFFFFF;
    for (k = 1; k < LUT_DEPTH; k = k + 1) begin
        w = (k * 1.0 * LUT_MAX) / LUT_DEPTH;
        if (w < 0.01)
            g_lut[k] = 32'hFFFFFFFF;
        else begin
            g = 1.0 / w;
            if (g > 255.0)
                g_lut[k] = 32'hFFFFFFFF;
            else
                g_lut[k] = $rtoi(g * 16777216.0);
        end
    end
end

always @(posedge clk) begin
    if (rst) begin
        dx_s1        <= 0;
        dy_s1        <= 0;
        valid_s1     <= 0;
        i_s1         <= 0;
        j_s1         <= 0;

        r2_s2        <= 0;
        valid_s2     <= 0;
        i_s2         <= 0;
        j_s2         <= 0;
        overflow_s2  <= 0;

        valid_out    <= 0;
        force_out    <= 0;
        i_out        <= 0;
        j_out        <= 0;
        overflow_out <= 0;
    end else begin
        // Stage 1
        dx_s1    <= $signed(xi) - $signed(xj);
        dy_s1    <= $signed(yi) - $signed(yj);
        valid_s1 <= valid_in;
        i_s1     <= i_in;
        j_s1     <= j_in;

        // Wider intermediate math for overflow detection
        dx_ext    = {dx_s1[WIDTH-1], dx_s1};
        dy_ext    = {dy_s1[WIDTH-1], dy_s1};
        dx_sq_full = dx_ext * dx_ext;
        dy_sq_full = dy_ext * dy_ext;
        r2_full    = dx_sq_full + dy_sq_full;

        // Stage 2
        r2_s2       <= r2_full[WIDTH-1:0];
        valid_s2    <= valid_s1;
        i_s2        <= i_s1;
        j_s2        <= j_s1;
        overflow_s2 <= |r2_full[2*WIDTH+1:WIDTH];

        // Stage 3
        force_out    <= g_lut[r2_s2[14 -: LUT_BITS]];
        valid_out    <= valid_s2;
        i_out        <= i_s2;
        j_out        <= j_s2;
        overflow_out <= overflow_s2;
    end
end

endmodule
