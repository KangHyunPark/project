`timescale 1ns / 1ps

module decoder5x32(
    input [4:0] din,
    
    output reg [31:0] dout
    );
    
    always @(*) begin
        dout = {{31{1'b0}},1'b1} << din;
    end
endmodule
