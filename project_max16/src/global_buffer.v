
module global_buffer
#(
    parameter integer addr_width = 16, // ?????? ?????? : ???? ?????? bank ????
    parameter integer data_width = 128
    )
(   
    input wire clk,
	input wire [addr_width-1:0] waddr,
	input wire [addr_width-1:0] raddr_a,
	input wire [addr_width-1:0] raddr_b,
	input wire [data_width-1:0] din,
	input wire write,
	
	output reg [data_width-1:0] dout_a,
	output reg [data_width-1:0] dout_b
    );
    
    reg [addr_width-1:0] raddr_a_buf;
	reg [addr_width-1:0] raddr_b_buf;
    reg [addr_width-1:0] raddr_a_buf2;
	reg [addr_width-1:0] raddr_b_buf2;
    
    wire [14:0] input_raddr;
    wire [12:0] weight_raddr;
    wire [14:0] output_raddr;
    
    wire [14:0] input_waddr;
    wire [12:0] weight_waddr;
    wire [14:0] output_waddr;
    
    wire input_write;
    wire weight_write;
    wire output_write;
    
	wire [data_width-1:0] input_dout;
	wire [data_width-1:0] weight_dout;
	wire [data_width-1:0] output_dout;
	
	always @(posedge clk) begin
	   raddr_a_buf <= raddr_a_buf2;
	   raddr_b_buf <= raddr_b_buf2;
	   raddr_a_buf2 <= raddr_a;
	   raddr_b_buf2 <= raddr_b;
	end
	
	always @(posedge clk) begin
	   if(raddr_a_buf[15] == 1'b1) begin
	       dout_a <= output_dout;
	   end
	   else if(raddr_a_buf[14] == 1'b1) begin
	       dout_a <= weight_dout;
	   end
	   else if(raddr_a_buf[14] == 1'b0) begin
	       dout_a <= input_dout;
	   end
	   else begin
	       dout_a <= {(data_width){1'b0}};
	   end
	end
	
	always @(posedge clk) begin
	   if(raddr_b_buf[15] == 1'b1) begin
	       dout_b <= output_dout;
	   end
	   else if(raddr_b_buf[14] == 1'b1) begin
	       dout_b <= weight_dout;
	   end
	   else if(raddr_b_buf[14] == 1'b0) begin
	       dout_b <= input_dout;
	   end
	   else begin
	       dout_b <= {(data_width){1'b0}};
	   end
	end
	
    assign input_raddr = (raddr_a[15:14] == 2'b00) ? raddr_a[13:0] : ((raddr_b[15:14] == 2'b00) ? raddr_b[13:0] : {14{1'b0}}); 
    assign input_waddr = (waddr[15:14] == 2'b00) ? waddr[13:0] : {14{1'b0}};
    
    assign weight_raddr = (raddr_a[15:14] == 2'b01) ? raddr_a[11:0] : ((raddr_b[15:14] == 2'b01) ? raddr_b[11:0] : {12{1'b0}});  
    assign weight_waddr = (waddr[15:14] == 2'b01) ? waddr[11:0] : {12{1'b0}};
    
    assign output_raddr = (raddr_a[15] == 1'b1) ? raddr_a[13:0] : ((raddr_b[15] == 1'b1) ? raddr_b[13:0] : {14{1'b0}}); 
    assign output_waddr = (waddr[15] == 1'b1) ? waddr[13:0] : {14{1'b0}};
    
    assign input_write = (waddr[15:14] == 2'b00) ? write : 1'b0;
    assign weight_write = (waddr[15:14] == 2'b01) ? write : 1'b0;
    assign output_write = (waddr[15] == 1'b1) ? write : 1'b0;
    
    //assign dout_a = (raddr_a_buf[16] == 1'b1) ? output_dout : ((raddr_a_buf[15] == 1'b1) ? weight_dout : ((raddr_a_buf[15] == 1'b0) ? input_dout : {(data_width){1'b0}})); 
    //assign dout_b = (raddr_b_buf[16] == 1'b1) ? output_dout : ((raddr_b_buf[15] == 1'b1) ? weight_dout : ((raddr_b_buf[15] == 1'b0) ? input_dout : {(data_width){1'b0}}));

    
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
