`timescale 1ns / 1ps

module delay_unit#(
    parameter integer DATA_WIDTH = 8,
    parameter integer delay = 16
    ) 
(
    input clk,
    input [DATA_WIDTH-1:0] din,
    
    output wire [DATA_WIDTH-1:0] dout
    );
    
    integer i;
    
    reg [DATA_WIDTH-1:0] intermediate [delay-1:0];
    always @(posedge clk) begin
        intermediate [0] <= din;
        for(i=1 ; i <= delay-1 ; i=i+1) begin
            intermediate [i] <= intermediate [i-1];
        end
    end
    
    assign dout = intermediate[delay-1];
endmodule
