
module global_buffer
#(
    parameter integer addr_width = 17, // 적당히 바꾸기 : 상위 비트는 bank 선택
    parameter integer data_width = 128
    )
(   
    input wire clk,
	input wire [addr_width-1:0] waddr,
	input wire [addr_width-1:0] raddr_a,
	input wire [addr_width-1:0] raddr_b,
	input wire [data_width-1:0] din,
	input wire write,
	
	output wire [data_width-1:0] dout_a,
	output wire [data_width-1:0] dout_b
    );
    
    reg [addr_width-1:0] raddr_a_buf;
	reg [addr_width-1:0] raddr_b_buf;
    
    wire [14:0] input_raddr;
    wire [14:0] weight_raddr;
    wire [15:0] output_raddr;
    
    wire [14:0] input_waddr;
    wire [14:0] weight_waddr;
    wire [15:0] output_waddr;
    
    wire input_write;
    wire weight_write;
    wire output_write;
    
	wire [data_width-1:0] input_dout;
	wire [data_width-1:0] weight_dout;
	wire [data_width-1:0] output_dout;
	
	always @(posedge clk) begin
	   raddr_a_buf <= raddr_a;
	   raddr_b_buf <= raddr_b;
	end
    
    assign input_raddr = (raddr_a[16:15] == 2'b00) ? raddr_a[14:0] : ((raddr_b[16:15] == 2'b00) ? raddr_b[14:0] : {14{1'b0}}); 
    assign input_waddr = (waddr[16:15] == 2'b00) ? waddr[14:0] : {14{1'b0}};
    
    assign weight_raddr = (raddr_a[16:15] == 2'b01) ? raddr_a[14:0] : ((raddr_b[16:15] == 2'b01) ? raddr_b[14:0] : {14{1'b0}});  
    assign weight_waddr = (waddr[16:15] == 2'b01) ? waddr[14:0] : {14{1'b0}};
    
    assign output_raddr = (raddr_a[16] == 1'b1) ? raddr_a[15:0] : ((raddr_b[16] == 1'b1) ? raddr_b[15:0] : {15{1'b0}}); 
    assign output_waddr = (waddr[16] == 1'b1) ? waddr[15:0] : {15{1'b0}};
    
    assign input_write = (waddr[16:15] == 2'b00) ? write : 1'b0;
    assign weight_write = (waddr[16:15] == 2'b01) ? write : 1'b0;
    assign output_write = (waddr[16] == 1'b1) ? write : 1'b0;
    
    assign dout_a = (raddr_a_buf[16] == 1'b1) ? output_dout : ((raddr_a_buf[15] == 1'b1) ? weight_dout : ((raddr_a_buf[15] == 1'b0) ? input_dout : {(data_width){1'b0}})); 
    assign dout_b = (raddr_b_buf[16] == 1'b1) ? output_dout : ((raddr_b_buf[15] == 1'b1) ? weight_dout : ((raddr_b_buf[15] == 1'b0) ? input_dout : {(data_width){1'b0}}));

    
    input_bram u_input_bram (
        .clka(clk),
        .addra(input_waddr),
        .dina(din),
        .wea(input_write),
        
        .clkb(clk),
        .addrb(input_raddr),
        .doutb(input_dout)
	);
	
	weight_bram u_weight_bram (
        .clka(clk),
        .addra(weight_waddr),
        .dina(din),
        .wea(weight_write),
        
        .clkb(clk),
        .addrb(weight_raddr),
        .doutb(weight_dout)
	);
	
	output_bram u_output_bram (
        .clka(clk),
        .addra(output_waddr),
        .dina(din),
        .wea(output_write),
        
        .clkb(clk),
        .addrb(output_raddr),
        .doutb(output_dout)
	);

endmodule
