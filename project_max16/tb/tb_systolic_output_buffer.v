`timescale 1ns / 1ps

module tb_systolic_output_buffer;
    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter length = 16;
    
    reg clk;
    reg rstn;
    
    reg [DATA_WIDTH*length-1:0] din;
    wire [DATA_WIDTH*length-1:0] dout;
    
    initial clk = 1'b1;
    always #HALF_CLK_PERIOD clk = ~clk;
    
    initial begin
        rstn = 1'b0;
        
        repeat (100)
        @(posedge clk); 
        
        rstn = 1'b1;   
        
        repeat (100)
        @(posedge clk); 
        
            @(posedge clk) din=128'h00000000000000000000000000000000;
            @(posedge clk) din=128'h00000000000000000000000000000110;
            @(posedge clk) din=128'h00000000000000000000000000021120;
            @(posedge clk) din=128'h00000000000000000000000003122130;
            @(posedge clk) din=128'h00000000000000000000000413223140;
            @(posedge clk) din=128'h00000000000000000000051423324150;
            @(posedge clk) din=128'h00000000000000000006152433425160;
            @(posedge clk) din=128'h00000000000000000716253443526170;
            @(posedge clk) din=128'h00000000000000081726354453627180;
            @(posedge clk) din=128'h00000000000009182736455463728190;
            @(posedge clk) din=128'h00000000000A192837465564738291A0;
            @(posedge clk) din=128'h000000000B1A2938475665748392A1B0;
            @(posedge clk) din=128'h0000000C1B2A39485766758493A2B1C0;
            @(posedge clk) din=128'h00000D1C2B3A495867768594A3B2C1D0;
            @(posedge clk) din=128'h000E1D2C3B4A5968778695A4B3C2D1E0;
            @(posedge clk) din=128'h0F1E2D3C4B5A69788796A5B4C3D2E1F0;
            @(posedge clk) din=128'h1F2E3D4C5B6A798897A6B5C4D3E2F100;
            @(posedge clk) din=128'h2F3E4D5C6B7A8998A7B6C5D4E3F20000;
            @(posedge clk) din=128'h3F4E5D6C7B8A99A8B7C6D5E4F3000000;
            @(posedge clk) din=128'h4F5E6D7C8B9AA9B8C7D6E5F400000000;
            @(posedge clk) din=128'h5F6E7D8C9BAAB9C8D7E6F50000000000;
            @(posedge clk) din=128'h6F7E8D9CABBAC9D8E7F6000000000000;
            @(posedge clk) din=128'h7F8E9DACBBCAD9E8F700000000000000;
            @(posedge clk) din=128'h8F9EADBCCBDAE9F80000000000000000;
            @(posedge clk) din=128'h9FAEBDCCDBEAF9000000000000000000;
            @(posedge clk) din=128'hAFBECDDCEBFA00000000000000000000;
            @(posedge clk) din=128'hBFCEDDECFB0000000000000000000000;
            @(posedge clk) din=128'hCFDEEDFC000000000000000000000000;
            @(posedge clk) din=128'hDFEEFD00000000000000000000000000;
            @(posedge clk) din=128'hEFFE0000000000000000000000000000;
            @(posedge clk) din=128'hFF000000000000000000000000000000;
            
    
    end
    
    systolic_output_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) u_systolic_output_buffer (
		.clk(clk),
		.rstn(rstn),
		.din(din),
		
		.dout(dout)
    );
endmodule
