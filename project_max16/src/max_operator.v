
module max_operator
#(
    parameter integer DATA_WIDTH = 8
    )
(
    input wire signed [DATA_WIDTH-1:0] in_a,
    input wire signed [DATA_WIDTH-1:0] in_b,
    
    output reg signed [DATA_WIDTH-1:0] out
    );
    
    always @(*) begin
        out = (in_a > in_b) ? in_a : in_b;
    end
endmodule
