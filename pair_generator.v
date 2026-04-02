module pair_generator #(
    parameter N = 16,
    parameter WIDTH = 32
)(
    input clk,
    input rst,
    input enable,

    output reg valid_out,
    output reg [$clog2(N)-1:0] i_out,
    output reg [$clog2(N)-1:0] j_out,
    output reg done
);

reg [$clog2(N)-1:0] i, j;
reg computing;

always @(posedge clk) begin
    if (rst) begin
        i         <= 0;
        j         <= 1;
        i_out     <= 0;
        j_out     <= 1;
        valid_out <= 0;
        done      <= 0;
        computing <= 0;
    end else begin
        valid_out <= 0;
        done      <= 0;

        if (enable && !computing) begin
            computing <= 1;
            i <= 0;
            j <= 1;
        end else if (computing) begin
            valid_out <= 1;
            i_out <= i;
            j_out <= j;

            if (j == N-1) begin
                if (i == N-2) begin
                    computing <= 0;
                    done <= 1;   // last pair is being issued this cycle
                end else begin
                    i <= i + 1;
                    j <= i + 2;
                end
            end else begin
                j <= j + 1;
            end
        end
    end
end

endmodule
