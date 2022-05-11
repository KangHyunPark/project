`timescale 1ns / 1ps

module valid_generator32
(
    input [1023:0] din,
    
    output wire [31:0] dout

    );
    wire [31:0] input1 [31:0];
    wire [31:0] input2 [15:0];
    wire [31:0] input3 [7:0];
    wire [31:0] input4 [3:0];
    wire [31:0] input5 [1:0];
    
    genvar i;
    generate
		for(i=0; i<=31; i=i+1) begin
		  assign input1[i] = din[(32*i)+:32];
		end	
    endgenerate
    
	generate
		for(i=0; i<=15; i=i+1) begin
			OR32 OR1 (
			     .in_a(input1[2*i]),
			     .in_b(input1[2*i+1]),
			     
			     .out(input2[i])
			);
        end
    endgenerate
    
    generate
		for(i=0; i<=7; i=i+1) begin
			OR32 OR2 (
			     .in_a(input2[2*i]),
			     .in_b(input2[2*i+1]),
			     
			     .out(input3[i])
			);
        end
    endgenerate   
    
    generate
		for(i=0; i<=3; i=i+1) begin
			OR32 OR3 (
			     .in_a(input3[2*i]),
			     .in_b(input3[2*i+1]),
			     
			     .out(input4[i])
			);
        end
    endgenerate               

	generate
		for(i=0; i<=1; i=i+1) begin
			OR32 OR4 (
			     .in_a(input4[2*i]),
			     .in_b(input4[2*i+1]),
			     
			     .out(input5[i])
			);
        end
    endgenerate   
    
    OR32 OR5 (
         .in_a(input5[0]),
         .in_b(input5[1]),
         
         .out(dout)
    );
 

endmodule
