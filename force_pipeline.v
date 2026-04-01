module force_pipeline #(
    parameter WIDTH = 32
)(
    input clk,
    input rst,

    input valid_in,
    input [WIDTH-1:0] xi, yi,
    input [WIDTH-1:0] xj, yj,

    output reg valid_out,
    output reg [WIDTH-1:0] force_out
);

// Stage registers
reg [WIDTH-1:0] dx_s1, dy_s1;
reg [WIDTH-1:0] r2_s2;

// Pipeline
always @(posedge clk) begin
    if (rst) begin
        valid_out <= 0;
    end else begin
        // Stage 1: differences
        dx_s1 <= xi - xj;
        dy_s1 <= yi - yj;

        // Stage 2: square + sum
        r2_s2 <= dx_s1*dx_s1 + dy_s1*dy_s1;

        // Stage 3: fake "force"
        force_out <= r2_s2 >> 4;  // placeholder

        // Valid signal propagation
        valid_out <= valid_in;
    end
end

endmodule
