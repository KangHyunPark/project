
module max_module32
#(
    parameter integer DATA_WIDTH = 8,
    parameter integer bank = 32
    )
(
    input clk,
    input wire signed [DATA_WIDTH-1:0] previous_data,
    input wire [(DATA_WIDTH*bank)-1:0] din,
    input wire [1:0] repetition,
    
    output wire signed [DATA_WIDTH-1:0] dout

    );
    wire signed [DATA_WIDTH-1:0] input1 [31:0];
    wire signed [DATA_WIDTH-1:0] input2 [15:0];
    wire signed [DATA_WIDTH-1:0] input3 [7:0];
    wire signed [DATA_WIDTH-1:0] input4 [3:0];
    wire signed [DATA_WIDTH-1:0] input5 [1:0];
    wire signed [DATA_WIDTH-1:0] input6;
    reg signed [DATA_WIDTH-1:0] last_input;
    
    genvar i;
    generate
		for(i=0; i<=31; i=i+1) begin
		  assign input1[i] = din[(DATA_WIDTH*i)+:DATA_WIDTH];
		end	
    endgenerate
    
	generate
		for(i=0; i<=15; i=i+1) begin
			max_operator # (
				.DATA_WIDTH(DATA_WIDTH)
			) max1 (
			     .clk(clk),
			     .in_a(input1[2*i]),
			     .in_b(input1[2*i+1]),
			     
			     .out(input2[i])
			);
        end	
    endgenerate
    
    generate
		for(i=0; i<=7; i=i+1) begin
			max_operator # (
				.DATA_WIDTH(DATA_WIDTH)
			) max2 (
			     .clk(clk),
			     .in_a(input2[2*i]),
			     .in_b(input2[2*i+1]),
			     
			     .out(input3[i])
			);
        end	
    endgenerate
    
    generate
		for(i=0; i<=3; i=i+1) begin
			max_operator # (
				.DATA_WIDTH(DATA_WIDTH)
			) max3 (
			     .clk(clk),
			     .in_a(input3[2*i]),
			     .in_b(input3[2*i+1]),
			     
			     .out(input4[i])
			);
        end	
    endgenerate
    
    generate
		for(i=0; i<=1; i=i+1) begin
			max_operator # (
				.DATA_WIDTH(DATA_WIDTH)
			) max4 (
			     .clk(clk),
			     .in_a(input4[2*i]),
			     .in_b(input4[2*i+1]),
			     
			     .out(input5[i])
			);
        end	
    endgenerate
    
    max_operator # (
        .DATA_WIDTH(DATA_WIDTH)
    ) max5 (
         .clk(clk),
         .in_a(input5[0]),
         .in_b(input5[1]),
         
         .out(input6)
    );
    
    max_operator # (
        .DATA_WIDTH(DATA_WIDTH)
    ) max6 (
         .clk(clk),
         .in_a(input6),
         .in_b(last_input),
         
         .out(dout)
    );
    
    always @(posedge clk) begin
        last_input <= (repetition == 2'b00) ? 8'b10000000 : previous_data;
    end
    
endmodule
