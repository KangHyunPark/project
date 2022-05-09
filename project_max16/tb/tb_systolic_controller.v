`timescale 1ns / 1ps

module tb_systolic_controller;

    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 12;
    parameter length = 16;
    
    parameter NIT_addr_width =12;
    parameter NIT_neighbor = 32;
    parameter NIT_point_index = 10;
    parameter PFT_addr_width = 5;
    parameter PFT_data_width = 8;
    parameter PE_ROW = 16;
    parameter PE_COL = 16;
    parameter PFT_bank = 32;
    parameter global_buf_addr_width = 13;
    parameter OUTPUT_DATA_WIDTH = 32;
    
    reg clk;
    reg rstn;
    
    reg start;
    reg [global_buf_addr_width-1:0] INIT_INPUT_ADDR;
    reg [global_buf_addr_width-1:0] INIT_WEIGHT_ADDR;
    reg [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR;
    reg [12:0] N_SAMPLE;
    reg [12:0] INPUT_FEATURE_LENGTH;
    reg [12:0] OUTPUT_FEATURE_LENGTH;
    
    wire [global_buf_addr_width-1:0] input_weight_addr;
    wire [global_buf_addr_width-1:0] output_addr;
    wire save;
    wire done;
    wire load_weight;
    reg load_data;
    wire first_partial;
	wire [PE_ROW-1:0] enable_systolic;
    
    wire [DATA_WIDTH*length-1:0] din;
    wire [DATA_WIDTH*length-1:0] dout_a;
    wire [DATA_WIDTH*length-1:0] dout_b;
    wire [global_buf_addr_width-1:0] waddr;
    wire [global_buf_addr_width-1:0] waddr_internal;
    reg [global_buf_addr_width-1:0] waddr_external;
    wire write;
    wire write_internal;
    wire write_internal_delayed;
    reg write_external;
    reg flag;
    
    reg [DATA_WIDTH*length-1:0] data_input [0:255];
    reg [DATA_WIDTH*length-1:0] data_weight [0:127];
    reg [DATA_WIDTH*length-1:0] data_line;
    
	wire [PE_ROW*DATA_WIDTH-1:0] b_buf_in;
	wire [PE_ROW*DATA_WIDTH-1:0] b_buf_out;
	wire [PE_ROW*DATA_WIDTH-1:0] a_buf_out;
	wire [PE_ROW*DATA_WIDTH-1:0] in_a_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] out_b_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] out_a_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] systolic_result;
	
	integer i;
	
    initial clk = 1'b1;
    always #HALF_CLK_PERIOD clk = ~clk;
    
    initial begin

        INIT_INPUT_ADDR <= {(global_buf_addr_width){1'b0}};
        INIT_WEIGHT_ADDR <= {1'b1,{(global_buf_addr_width-1){1'b0}}};
        INIT_OUTPUT_ADDR <= {2'b11,{(global_buf_addr_width-2){1'b0}}};
        N_SAMPLE <= 13'd64;
        INPUT_FEATURE_LENGTH <= 13'd64;
        OUTPUT_FEATURE_LENGTH <= 13'd32;

        rstn <= 1'b0;
        
        write_external <= 1'b0;
        waddr_external <= {(global_buf_addr_width){1'b0}};
        flag <= 1'b1;
        start <= 1'b0;
        load_data <= 1'b0;
        
        repeat (10)
        @(posedge clk); 

        rstn = 1'b1;   
        
        repeat (10)
        @(posedge clk); 
        
        $readmemb("systolic_long_input.txt", data_input);
        $readmemb("systolic_long_weight.txt", data_weight);
        
        repeat (10)
        @(posedge clk); 
        waddr_external <= INIT_INPUT_ADDR;
        
        for(i=0; i<256; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr_external <= waddr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                load_data <= 1'b1;
                write_external <= 1'b1;
                data_line <= data_input[i];
            end
        end
        
        @(posedge clk)
        load_data <= 1'b0;
        write_external <= 1'b0;
        waddr_external <= INIT_WEIGHT_ADDR;
        flag <= 1'b1;
        
        for(i=0; i<128; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr_external <= waddr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                load_data <= 1'b1;
                write_external <= 1'b1;
                data_line <= data_weight[i];
            end
        end
        
        @(posedge clk)
        load_data <= 1'b0;
        write_external <= 1'b0;
        flag <= 1'b1;
        
        @(posedge clk)
        start <= 1'b1;
        
        @(posedge clk)
        start <= 1'b0;
        
        wait(done)
        $finish;
       
    end
    systolic_controller #(
        .global_buf_addr_width(global_buf_addr_width),
        .PE_ROW(PE_ROW)
	) u_systolic_controller (
        .clk(clk),
        .rstn(rstn),
		.start(start),
		.INIT_INPUT_ADDR(INIT_INPUT_ADDR),
		.INIT_WEIGHT_ADDR(INIT_WEIGHT_ADDR),
		.INIT_OUTPUT_ADDR(INIT_OUTPUT_ADDR),
		.N_SAMPLE(N_SAMPLE),
		.INPUT_FEATURE_LENGTH(INPUT_FEATURE_LENGTH),
		.OUTPUT_FEATURE_LENGTH(OUTPUT_FEATURE_LENGTH),
		
		.input_weight_addr(input_weight_addr),
		.output_addr(output_addr),
		.save(save),
		.done(done),
		.load_weight_buf(load_weight),
		.enable_systolic(enable_systolic),
		.first_partial(first_partial),
		.write(write_internal)
	);
	
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
		.in_b_bus(b_buf_out), 
		.enable(enable_systolic),
		.save(save),
		
		.out_a_bus(out_a_bus), // for debugging
		.out_b_bus(out_b_bus)
    );
 
     systolic_input_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) systolic_input_buffer_input (
		.clk(clk),
		.rstn(rstn),
		.din(dout_a),
		
		.dout(a_buf_out)
    );
    
    
    systolic_input_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) u_systolic_input_buffer_partialsum (
		.clk(clk),
		.rstn(rstn),
		.din(b_buf_in),
		
		.dout(b_buf_out)
    );
    
    systolic_output_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) u_systolic_output_buffer (
		.clk(clk),
		.rstn(rstn),
		.din(out_b_bus),
		
		.dout(systolic_result)
    );   
     
    simple_sram2 # (
        .addr_width(global_buf_addr_width),
        .data_width(DATA_WIDTH*length)
    ) sram_bank (
        .clk(clk),
        .waddr(waddr),
        .raddr_a(input_weight_addr), // systolic input, weight
        .raddr_b(output_addr), // systolic output
        .write(write), // external signal or after systolic cal
        .din(din),
        
        .dout_a(dout_a), // systolic input, weight
        .dout_b(dout_b) // systolic output
    );
    
    delay_unit # (
        .DATA_WIDTH(global_buf_addr_width),
        .delay(34)
    ) u_delay_unit_addr (
        .clk(clk),
        .din(output_addr),
            
        .dout(waddr_internal)
    );
    
    delay_unit # (
        .DATA_WIDTH(global_buf_addr_width),
        .delay(34)
    ) u_delay_unit_write (
        .clk(clk),
        .din(write_internal),
            
        .dout(write_internal_delayed)
    );
    assign in_a_bus = load_weight ? dout_a : a_buf_out;
    assign b_buf_in = first_partial ? {128{1'b0}} : dout_b;
    assign din = load_data ? data_line : systolic_result;
    assign waddr = load_data ? waddr_external : waddr_internal;
    assign write = load_data ? write_external : write_internal_delayed;
endmodule
