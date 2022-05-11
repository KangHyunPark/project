`timescale 1ns / 1ps


module OR32(
    input [31:0] in_a,
    input [31:0] in_b,
    
    output wire [31:0] out
    );
    
    assign out = in_a | in_b;
endmodule
