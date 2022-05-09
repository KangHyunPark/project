
module shift_register
#(
    parameter integer DATA_WIDTH = 8,
    parameter integer length = 16
    ) 
(
    input wire clk,
    input wire rstn,
    input wire [(DATA_WIDTH-1):0] din,
	
	output wire [(DATA_WIDTH-1):0] dout
    );
    
    integer i;
    
    reg [DATA_WIDTH*length-1:0] mem;
    
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            mem <= {(DATA_WIDTH*length){1'b0}};    
        end
        else begin
            mem[0+:DATA_WIDTH] <= din; 
            for(i=1; i<=length-1; i=i+1) begin
                mem[DATA_WIDTH*i+:DATA_WIDTH] <= mem[DATA_WIDTH*(i-1)+:DATA_WIDTH];
            end 
        end
    end    
    
    assign dout = mem[DATA_WIDTH*(length-1)+:DATA_WIDTH];
endmodule
