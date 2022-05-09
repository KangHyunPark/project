
module line_buffer
#(
    parameter integer DATA_WIDTH = 8,
	parameter integer NUM = 16
    ) 
(
    input wire clk, 
    input wire rstn,
    input wire [(DATA_WIDTH*NUM-1):0] din,
	input wire write, // 1이 된 후부터 순차적으로 데이터 저장 (1 유지)
	
	output reg [(DATA_WIDTH*NUM-1):0] dout
    );
	
	reg [6:0] counter; // counter reg num = log2(NUM)
	
	always @(negedge rstn) begin
		if(!rstn) begin
			dout <= {(DATA_WIDTH*NUM){1'b0}};
			counter <= 7'b0000000;
		end
	end
	
	always @(posedge clk) begin
		if(write) begin
			dout[counter] <= din[(DATA_WIDTH*counter)+:DATA_WIDTH];
			counter <= counter + 1;
		end
		if (counter == NUM)
		  counter <= 7'b0000000;
	end
	
endmodule
