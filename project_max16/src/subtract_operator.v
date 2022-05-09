
module subtract_operator
#(
    parameter integer DATA_WIDTH = 8
    )
(
    input wire signed [DATA_WIDTH-1:0] in_a,
    input wire signed [DATA_WIDTH-1:0] in_b,
    
    output wire signed [DATA_WIDTH-1:0] out
    );
    assign out = in_a - in_b;
endmodule
