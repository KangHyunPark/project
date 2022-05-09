`timescale 1ns / 1ps

module tb_controller;
    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter length = 16;
    
    parameter NIT_addr_width =12;
    parameter NIT_neighbor = 32;
    parameter NIT_point_index = 10;
    parameter PFT_addr_width = 5;
    parameter PFT_data_width = 8;
    parameter PE_ROW = 16;
    parameter PE_COL = 16;
    parameter bank = 32;
    parameter log_bank = 5;
    parameter microaddr_width = 5;
   
    parameter global_buf_addr_width = 13;
    parameter OUTPUT_DATA_WIDTH = 32;
    
    reg clk;
    reg rstn;
    
    reg start;
    reg LOAD_DONE;
    reg systolic_done;
    reg aggregation_done;
    reg [12:0] N_SAMPLE;
    reg [global_buf_addr_width-1:0] INIT_INPUT_ADDR;
    reg [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR;
    reg [12:0] OUTPUT_FEATURE_LENGTH;

    wire load_data;
    wire start_systolic;
    wire start_aggregation;
    wire [global_buf_addr_width-1:0] global_buf_raddr;
    wire [global_buf_addr_width-1:0] global_buf_waddr;
    wire [(log_bank+microaddr_width)-1:0] PFT_waddr;
    wire done;

    initial clk = 1'b1;
    always #HALF_CLK_PERIOD clk = ~clk;
    
    initial begin
        INIT_INPUT_ADDR <= {(global_buf_addr_width){1'b0}};
        INIT_OUTPUT_ADDR <= {2'b11,{(global_buf_addr_width-2){1'b0}}};
        N_SAMPLE <= 13'd1024;
        OUTPUT_FEATURE_LENGTH <= 13'd64;

        rstn <= 1'b0;
        
        LOAD_DONE <= 1'b0;
        systolic_done <= 1'b0;
        aggregation_done <= 1'b0;
        
        start <= 1'b0;
        
        repeat (10)
        @(posedge clk); 

        rstn = 1'b1;   
        
        repeat (10)
        @(posedge clk); 
        
        start <= 1'b1;
        
        @(posedge clk) 
        start <= 1'b0;
        
        
        repeat (2000)
        @(posedge clk); 
        
        LOAD_DONE <= 1'b1;
        
        @(posedge clk)
        LOAD_DONE <= 1'b0;
        
        repeat (2000)
        @(posedge clk); 
        
        systolic_done <= 1'b1;
        
        @(posedge clk)
        systolic_done <= 1'b0;
        
        repeat (2000)
        @(posedge clk); 
        
        aggregation_done <= 1'b1;
        
        @(posedge clk)
        aggregation_done <= 1'b0;
        
        repeat (2000)
        @(posedge clk); 
        
        aggregation_done <= 1'b1;
        
        @(posedge clk)
        aggregation_done <= 1'b0;
        
        repeat (2000)
        @(posedge clk); 
        
        aggregation_done <= 1'b1;
        
        @(posedge clk)
        aggregation_done <= 1'b0;
        
        repeat (2000)
        @(posedge clk); 
        
        aggregation_done <= 1'b1;
        
        @(posedge clk)
        aggregation_done <= 1'b0;
        
    end
    
    controller #(
        .global_buf_addr_width(global_buf_addr_width),
        .bank(bank),
        .log_bank(log_bank),
        .microaddr_width(microaddr_width)
	) u_controller (
        .clk(clk),
        .rstn(rstn),
		.start(start),
		.LOAD_DONE(LOAD_DONE),
		.systolic_done(systolic_done),
		.aggregation_done(aggregation_done),
		.INIT_INPUT_ADDR(INIT_INPUT_ADDR),
		.INIT_OUTPUT_ADDR(INIT_OUTPUT_ADDR),
		.N_SAMPLE(N_SAMPLE),
		.OUTPUT_FEATURE_LENGTH(OUTPUT_FEATURE_LENGTH),
		
		.load_data(load_data),
		.start_systolic(start_systolic),
		.start_aggregation(start_aggregation),
		.global_buf_raddr(global_buf_raddr),
		.global_buf_waddr(global_buf_waddr),
		.PFT_waddr(PFT_waddr),
		.done(done)
	);


endmodule
