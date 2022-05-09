
module systolic_output_buffer
#(
    parameter integer DATA_WIDTH = 8,
    parameter integer length = 16
    ) 
(
    input wire clk,
    input wire rstn,
    input wire [(DATA_WIDTH*length-1):0] din,
	
	output wire [(DATA_WIDTH*length-1):0] dout
    );
    
    genvar i;
    generate
        for(i=0; i<=length-1; i=i+1) begin
            shift_register #(
                .DATA_WIDTH(DATA_WIDTH),
                .length(i+1)
            ) row (
                .clk(clk),
                .rstn(rstn),
                .din(din[DATA_WIDTH*(length-1-i)+:DATA_WIDTH]),
                
                .dout(dout[DATA_WIDTH*(length-1-i)+:DATA_WIDTH])
            );
        end
    endgenerate
endmodule
