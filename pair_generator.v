module pair_generator #(
    parameter N = 16,
    parameter WIDTH = 32
)(
    input clk,
    input rst,
    input enable,  // start computation

    output reg valid_out,
    output reg [$clog2(N)-1:0] i_out,
    output reg [$clog2(N)-1:0] j_out,
    output reg done
);

reg [$clog2(N)-1:0] i, j;
reg computing;  // NEW: state machine

always @(posedge clk) begin
    if (rst) begin
        i <= 0;
        j <= 1;
        valid_out <= 0;
        done <= 0;
        computing <= 0;
    end else begin
        valid_out <= 0;
        
        if (enable && !computing) begin
            // Start new computation
            computing <= 1;
            done <= 0;
            i <= 0;
            j <= 1;
            valid_out <= 1;
            i_out <= 0;
            j_out <= 1;
        end else if (computing) begin
            // Continue generating pairs
            valid_out <= 1;
            
            if (j == N-1) begin
                if (i == N-2) begin
                    // Last pair done
                    computing <= 0;
                    done <= 1;
                    valid_out <= 0;
                end else begin
                    i <= i + 1;
                    j <= i + 2;
                end
            end else begin
                j <= j + 1;
            end
            
            i_out <= i;
            j_out <= j;
        end
    end
end

endmodule
