`timescale 1ns / 1ps

// input : 16 * 16 -> 128bit * 16    address : 0 
// weight : 16 * 16 -> 128bit * 16   address : 32
// output : 16 * 16 -> 128bit * 16   address : 64

module tb_systolic_short_sram;    
    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 7;
    parameter OUTPUT_DATA_WIDTH = 32;
    parameter length = 16;
    parameter PE_ROW = 16;
    parameter PE_COL = 16;
    
    reg clk;
    reg rstn;
    reg load_weight;
    reg load_data;
    reg first_partial;
    reg save;
	reg [PE_ROW-1:0] enable_systolic;
    
    wire [DATA_WIDTH*length-1:0] din;
    wire [DATA_WIDTH*length-1:0] dout_a;
    wire [DATA_WIDTH*length-1:0] dout_b;
    reg [ADDR_WIDTH-1:0] waddr;
    reg [ADDR_WIDTH-1:0] raddr_a;
    reg [ADDR_WIDTH-1:0] raddr_b;
    reg write;
    reg flag;
    
    reg [DATA_WIDTH*length-1:0] data [0:15];
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
        rstn <= 1'b0;
        save <= 1'b0;
        enable_systolic <= 16'h0000;
        load_weight <= 1'b0;
        load_data <= 1'b0;
        first_partial <= 1'b0;
        
        write <= 1'b0;
        waddr <= 12'h000;
        raddr_a <= 12'h000;
        raddr_b <= 12'h000;
        flag <= 1'b1;
        
        repeat (100)
        @(posedge clk); 
        
        $readmemb("systolic_short_sram_input.txt", data);
        rstn = 1'b1;   
        
        repeat (100)
        @(posedge clk); 

        for(i=0; i<16; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr <= waddr+1;
                end
                else begin
                    flag <= 1'b0;
                end
                load_data <= 1'b1;
                write <= 1'b1;
                data_line <= data[i];
            end
        end
        
        @(posedge clk)
        load_data <= 1'b0;
        write <= 1'b0;
        $readmemb("systolic_short_sram_weight.txt", data);
        waddr <= 7'b0100000;
        flag <= 1'b1;
        
        for(i=0; i<16; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr <= waddr+1;
                end
                else begin
                    flag <= 1'b0;
                end
                load_data <= 1'b1;
                write <= 1'b1;
                data_line <= data[i];
            end
        end
        
        @(posedge clk)
        load_data <= 1'b0;
        write <= 1'b0;
        flag <= 1'b1;
        
        repeat (100)
        @(posedge clk);
        
        @(posedge clk)
        raddr_a <= 7'b0100000;
        load_weight <= 1'b1;
        
        for(i=0; i<16; i=i+1) begin
            @(posedge clk) begin
                raddr_a <= raddr_a+1;
            end
        end

        save <= 1'b1;
        
        @(posedge clk)
        save <= 1'b0;
        load_weight <= 1'b0;
        
        @(posedge clk);
        
        @(posedge clk)
        raddr_a <= 7'b0000000;
        
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000000000000;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000000000001;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000000000011;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000000000111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000000001111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000000011111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000000111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000001111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000011111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000000111111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000001111111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000011111111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0000111111111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0001111111111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0011111111111111;
        @(posedge clk) raddr_a <= raddr_a+1; enable_systolic <= 16'b0111111111111111;  
        @(posedge clk) enable_systolic <= 16'b1111111111111111;  
        
        repeat(16)
        @(posedge clk);
        
        waddr <= 7'b1000000;
        
        for(i=0; i<16; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr <= waddr+1;
                end
                else begin
                    flag <= 1'b0;
                end
                load_data <= 1'b0;
                write <= 1'b1;
            end
        end
        
        @(posedge clk) write <= 1'b0;

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
        .addr_width(ADDR_WIDTH),
        .data_width(DATA_WIDTH*length)
    ) sram_bank (
        .clk(clk),
        .waddr(waddr),
        .raddr_a(raddr_a), // systolic input, weight
        .raddr_b(raddr_b), // systolic output
        .write(write), // external signal or after systolic cal
        .din(din),
        
        .dout_a(dout_a), // systolic input, weight
        .dout_b(dout_b) // systolic output
    );
    
    assign in_a_bus = load_weight ? dout_a : a_buf_out;
    assign b_buf_in = first_partial ? {128{1'b0}} : dout_b;
    assign din = load_data ? data_line : systolic_result;
endmodule
