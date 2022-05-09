`timescale 1ns / 1ps

module tb_sram;

    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 12;
    parameter length = 16;
    
    reg clk;
    reg rstn;
    
    reg [DATA_WIDTH*length-1:0] data [0:63];
    reg [DATA_WIDTH*length-1:0] din;
    
    reg [ADDR_WIDTH-1:0] waddr;
    reg [ADDR_WIDTH-1:0] raddr_a;
    reg [ADDR_WIDTH-1:0] raddr_b;
    reg write;
    wire [DATA_WIDTH*length-1:0] dout_a;
    wire [DATA_WIDTH*length-1:0] dout_b;
    
    reg flag;
    
    integer i;
    
    initial clk = 1'b1;
    always #HALF_CLK_PERIOD clk = ~clk;
    
    initial begin
        rstn <= 1'b0;
        write <= 1'b0;
        waddr <= 12'h000;
        raddr_a <= 12'h000;
        raddr_b <= 12'h000;
        flag <= 1'b1;
        
        repeat (100)
        @(posedge clk); 
        
        $readmemb("sram_input.txt", data);
        rstn = 1'b1;   
        
        repeat (100)
        @(posedge clk); 

        for(i=0; i<64; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr <= waddr+1;
                end
                else begin
                    flag <= 1'b0;
                end
                write <= 1'b1;
                din <= data[i];
            end
        end
        
        @(posedge clk) write <= 1'b0;
        
        repeat(100)
        @(posedge clk);
        
        for(i=0; i<64; i=i+1) begin
            @(posedge clk) begin
                raddr_a <= raddr_a+1;
                raddr_b <= raddr_b+1;
            end
        end
        

        //$finish;
    end
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
    
endmodule
