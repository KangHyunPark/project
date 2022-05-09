`timescale 1ns / 1ps

module tb_systolic_short;
    
    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter OUTPUT_DATA_WIDTH = 32;
    parameter length = 16;
    parameter PE_ROW = 16;
    parameter PE_COL = 16;
    
    reg clk;
    reg rstn;
    reg load_weight;
    reg save;
	reg [PE_ROW-1:0] enable_systolic;
    
    reg [DATA_WIDTH*length-1:0] din;
    wire [DATA_WIDTH*length-1:0] dout;
    
	wire [PE_ROW*DATA_WIDTH-1:0] in_a_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] in_a_bus_buf;
	wire [PE_ROW*DATA_WIDTH-1:0] out_a_bus;
	
	wire [PE_COL*DATA_WIDTH-1:0] out_b_bus;
    
    initial clk = 1'b1;
    always #HALF_CLK_PERIOD clk = ~clk;
    
    initial begin
        rstn = 1'b0;
        save = 1'b0;
        enable_systolic = 16'h0000;
        
        repeat (100)
        @(posedge clk); 
        
        rstn = 1'b1;   
        
        repeat (100)
        @(posedge clk); 
        
        @(posedge clk)
        din=128'h10101010101010101010101010101010;
        load_weight=1;
        @(posedge clk) din=128'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F;
        @(posedge clk) din=128'h0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E;
        @(posedge clk) din=128'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D;
        @(posedge clk) din=128'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C;
        @(posedge clk) din=128'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B;
        @(posedge clk) din=128'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A;
        @(posedge clk) din=128'h09090909090909090909090909090909;
        @(posedge clk) din=128'h08080808080808080808080808080808;
        @(posedge clk) din=128'h07070707070707070707070707070707;
        @(posedge clk) din=128'h06060606060606060606060606060606;
        @(posedge clk) din=128'h05050505050505050505050505050505;
        @(posedge clk) din=128'h04040404040404040404040404040404;
        @(posedge clk) din=128'h03030303030303030303030303030303;
        @(posedge clk) din=128'h02020202020202020202020202020202;
        @(posedge clk) din=128'h01010101010101010101010101010101;
        @(posedge clk)
        save = 1; load_weight=0;
        @(posedge clk) save=0;
        @(posedge clk) 
        @(posedge clk) din<=128'h0F0E0D0C0B0A09080706050403020100; enable_systolic<=16'b0000000000000000;
        @(posedge clk) din<=128'h1F1E1D1C1B1A19181716151413121110; enable_systolic<=16'b0000000000000001;
        @(posedge clk) din<=128'h2F2E2D2C2B2A29282726252423222120; enable_systolic<=16'b0000000000000011;
        @(posedge clk) din<=128'h3F3E3D3C3B3A39383736353433323130; enable_systolic<=16'b0000000000000111;
        @(posedge clk) din<=128'h4F4E4D4C4B4A49484746454443424140; enable_systolic<=16'b0000000000001111;
        @(posedge clk) din<=128'h5F5E5D5C5B5A59585756555453525150; enable_systolic<=16'b0000000000011111;
        @(posedge clk) din<=128'h6F6E6D6C6B6A69686766656463626160; enable_systolic<=16'b0000000000111111;
        @(posedge clk) din<=128'h7F7E7D7C7B7A79787776757473727170; enable_systolic<=16'b0000000001111111;
        @(posedge clk) din<=128'h8F8E8D8C8B8A89888786858483828180; enable_systolic<=16'b0000000011111111;
        @(posedge clk) din<=128'h9F9E9D9C9B9A99989796959493929190; enable_systolic<=16'b0000000111111111;
        @(posedge clk) din<=128'hAFAEADACABAAA9A8A7A6A5A4A3A2A1A0; enable_systolic<=16'b0000001111111111;
        @(posedge clk) din<=128'hBFBEBDBCBBBAB9B8B7B6B5B4B3B2B1B0; enable_systolic<=16'b0000011111111111;
        @(posedge clk) din<=128'hCFCECDCCCBCAC9C8C7C6C5C4C3C2C1C0; enable_systolic<=16'b0000111111111111;
        @(posedge clk) din<=128'hDFDEDDDCDBDAD9D8D7D6D5D4D3D2D1D0; enable_systolic<=16'b0001111111111111;
        @(posedge clk) din<=128'hEFEEEDECEBEAE9E8E7E6E5E4E3E2E1E0; enable_systolic<=16'b0011111111111111;
        @(posedge clk) din<=128'hFFFEFDFCFBFAF9F8F7F6F5F4F3F2F1F0; enable_systolic<=16'b0111111111111111;
        @(posedge clk) enable_systolic<=16'b1111111111111111;
        //$finish;
    end
    
    systolic #(
		.PE_ROW(PE_ROW),
		.PE_COL(PE_COL),
		.INPUT_DATA_WIDTH(DATA_WIDTH),
		.WEIGHT_DATA_WIDTH(DATA_WIDTH),
		.OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH)
    ) u_systolic (
		.clk(clk),
		.rstn(rstn),
		.in_a_bus(in_a_bus),
		.in_b_bus({(PE_COL*DATA_WIDTH){1'b0}}), 
		.enable(enable_systolic),
		.save(save),
		
		.out_a_bus(out_a_bus), // for debugging
		.out_b_bus(out_b_bus)
    );
 
     systolic_input_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) u_systolic_input_buffer (
		.clk(clk),
		.rstn(rstn),
		.din(din),
		
		.dout(in_a_bus_buf)
    );
    
    assign in_a_bus = load_weight ? din : in_a_bus_buf;
    
    systolic_output_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) u_systolic_output_buffer (
		.clk(clk),
		.rstn(rstn),
		.din(out_b_bus),
		
		.dout(dout)
    );
endmodule
