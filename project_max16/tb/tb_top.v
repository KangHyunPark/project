`timescale 1ns / 1ps

module tb_top;
    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter length = 16;
    
    parameter NIT_addr_width =12;
    parameter NIT_neighbor = 32;
    parameter NIT_point_index = 10;
    parameter PFT_addr_width = 5;
    parameter PE_ROW = 16;
    parameter PE_COL = 16;
    parameter PFT_bank = 32;
    parameter log_bank = 5;
    parameter microaddr_width = 5;
   
    parameter global_buf_addr_width = 17;
    parameter OUTPUT_DATA_WIDTH = 24;
    
    reg clk;
    reg rstn;
    
	reg start;
    reg LOAD_DONE;    
    reg [12:0] N_SAMPLE;
    reg [global_buf_addr_width-1:0] INIT_INPUT_ADDR;
    reg [global_buf_addr_width-1:0] INIT_WEIGHT_ADDR;
    reg [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR;
    reg [12:0] INPUT_FEATURE_LENGTH;
    reg [12:0] OUTPUT_FEATURE_LENGTH;

    reg global_buf_write_external;
    reg [global_buf_addr_width-1:0] waddr_external;
    reg [NIT_addr_width-1:0] NIT_addr_external;
    
    reg flag;
    
    reg [DATA_WIDTH*length-1:0] GB_data_input [0:16383];
    reg [DATA_WIDTH*length-1:0] GB_data_weight [0:1023];
    reg [DATA_WIDTH*length-1:0] GB_data_line;
    
    reg [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_data [0:4095];
    reg [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_external_data;
    
    wire done;
    
    integer i;
        
    initial clk = 1'b1;
    always #HALF_CLK_PERIOD clk = ~clk;
    
    initial begin
        INIT_INPUT_ADDR <= {(global_buf_addr_width){1'b0}};
        INIT_WEIGHT_ADDR <= {2'b01,{(global_buf_addr_width-2){1'b0}}};
        INIT_OUTPUT_ADDR <= {1'b1,{(global_buf_addr_width-1){1'b0}}};
        N_SAMPLE <= 13'd1024;
        INPUT_FEATURE_LENGTH <= 13'd256;
        OUTPUT_FEATURE_LENGTH <= 13'd64;

        rstn <= 1'b0;
        flag <= 1'b1;
        
        LOAD_DONE <= 1'b0;
        
        start <= 1'b0;
        NIT_addr_external <= {(NIT_addr_width){1'b0}};     
        
        global_buf_write_external <= 1'b0;
        waddr_external <= {(global_buf_addr_width){1'b0}};   
        
        $readmemb("Top_GB_input.txt", GB_data_input);
        $readmemb("Top_GB_weight.txt", GB_data_weight);
        $readmemb("Top_NIT.txt", NIT_data);
        
        repeat (10)
        @(posedge clk); 

        rstn <= 1'b1;   
        
        repeat (10)
        @(posedge clk); 
        
        start <= 1'b1;
        
        @(posedge clk)
        start <= 1'b0;
        
        for(i=0; i<4096; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    NIT_addr_external <= NIT_addr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                NIT_external_data <= NIT_data[i];
            end
        end
        
        @(posedge clk)        
        flag <= 1'b1;
        
        repeat(10)
        @(posedge clk);
        
        waddr_external <= INIT_INPUT_ADDR;
        
        for(i=0; i<16384; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr_external <= waddr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                global_buf_write_external <= 1'b1;
                GB_data_line <= GB_data_input[i];
            end
        end
        
        @(posedge clk)
        global_buf_write_external <= 1'b0;
        waddr_external <= INIT_WEIGHT_ADDR;
        flag <= 1'b1;
        
        for(i=0; i<1024; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr_external <= waddr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                global_buf_write_external <= 1'b1;
                GB_data_line <= GB_data_weight[i];
            end
        end
        
        @(posedge clk)
        global_buf_write_external <= 1'b0;
        flag <= 1'b1;
        LOAD_DONE <= 1'b1;
        
        @(posedge clk)
        LOAD_DONE <= 1'b0;
        
        wait(done)
        repeat(10)
        @(posedge clk);
        $finish;

    end
    
    top #(
        .DATA_WIDTH(DATA_WIDTH),
        .length(length),
        .NIT_addr_width(NIT_addr_width),
        .NIT_neighbor(NIT_neighbor),
        .NIT_point_index(NIT_point_index),
        .PFT_addr_width(PFT_addr_width),
        .PE_ROW(PE_ROW),
        .PE_COL(PE_COL),
        .PFT_bank(PFT_bank),
        .log_bank(log_bank),
        .microaddr_width(microaddr_width),
        .global_buf_addr_width(global_buf_addr_width),
        .OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH)
    ) u_top (
        .clk(clk),
        .rstn(rstn),
        
        .start(start),
        .LOAD_DONE(LOAD_DONE),
        .N_SAMPLE(N_SAMPLE),
        .INIT_INPUT_ADDR(INIT_INPUT_ADDR),
        .INIT_WEIGHT_ADDR(INIT_WEIGHT_ADDR),
        .INIT_OUTPUT_ADDR(INIT_OUTPUT_ADDR),
        .INPUT_FEATURE_LENGTH(INPUT_FEATURE_LENGTH),
        .OUTPUT_FEATURE_LENGTH(OUTPUT_FEATURE_LENGTH),
        .global_buf_write_external(global_buf_write_external),
        .waddr_external(waddr_external),
        .NIT_addr_external(NIT_addr_external),
        .GB_data_line(GB_data_line),
        .NIT_external_data(NIT_external_data),
        
        .done(done)
    );
endmodule
