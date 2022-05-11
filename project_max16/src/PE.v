`timescale 1ns / 1ps

module PE
#(
    parameter integer INPUT_DATA_WIDTH = 8,
    parameter integer WEIGHT_DATA_WIDTH = 8,
    parameter integer OUTPUT_DATA_WIDTH = 20
    ) 
(
    input wire clk, 
    input wire rstn,
    input wire signed [(INPUT_DATA_WIDTH-1):0] in_a, // weight ???? ???? feature ????
    input wire signed [(OUTPUT_DATA_WIDTH-1):0] in_b, // partial sum ????
	input wire enable, // PE ???? - input?? ?????????? ???????? enable?? ?????????? ??????!
	input wire save, // weight ????
	
	output reg signed [(INPUT_DATA_WIDTH-1):0] out_a,
	output reg signed [(OUTPUT_DATA_WIDTH-1):0] out_b,
	output reg out_enable
    );
	
	reg signed [(INPUT_DATA_WIDTH-1):0] weight;
	
	always @(posedge clk or negedge rstn) begin
		if(!rstn) begin
		    out_enable <= 1'b0;
			out_a <= {(INPUT_DATA_WIDTH){1'b0}};
			out_b <= {(OUTPUT_DATA_WIDTH){1'b0}};
			weight <= {(INPUT_DATA_WIDTH){1'b0}};
		end
		else if(save) begin
			weight <= in_a;
            out_enable <= enable;
            out_a <= in_a;
		end
		else if(enable) begin
            out_b <= in_b + in_a * weight;
            out_enable <= enable;
            out_a <= in_a;
		end
		else begin
		    out_enable <= enable;
            out_a <= in_a;
        end
	end
endmodule
