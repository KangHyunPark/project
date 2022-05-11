`timescale 1ns / 1ps

module systolic_row
#(
    parameter integer PE_NUM = 16,
    parameter integer INPUT_DATA_WIDTH = 8,
    parameter integer WEIGHT_DATA_WIDTH = 8,
    parameter integer OUTPUT_DATA_WIDTH = 20
    )
(
    input wire clk,
    input wire rstn,
    input wire signed [(INPUT_DATA_WIDTH-1):0] in_a,
    input wire [(OUTPUT_DATA_WIDTH*PE_NUM)-1:0] in_b_bus,
    input wire enable,
    input wire save,
    
    output wire signed [(INPUT_DATA_WIDTH-1):0] out_a,
    output wire [(OUTPUT_DATA_WIDTH*PE_NUM)-1:0] out_b_bus
    );
    
    wire [(INPUT_DATA_WIDTH-1):0] a [PE_NUM-1:0];
    wire [(OUTPUT_DATA_WIDTH-1):0] b [PE_NUM-1:0];
    wire internal_enable [PE_NUM-1:0];
    
    PE #(
        .INPUT_DATA_WIDTH(INPUT_DATA_WIDTH),
        .WEIGHT_DATA_WIDTH(WEIGHT_DATA_WIDTH),
        .OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH)
    ) PE_START (    
        .clk(clk), 
        .rstn(rstn),
        .in_a(in_a),
        .in_b(in_b_bus[(OUTPUT_DATA_WIDTH-1):0]),
        .enable(enable),
        .save(save),
        
        .out_a(a[0]),
        .out_b(b[0]),
        .out_enable(internal_enable[0])
	);
	
	genvar i;
	generate 
	   for(i=1; i<=PE_NUM-1; i=i+1) begin
            PE #(
                .INPUT_DATA_WIDTH(INPUT_DATA_WIDTH),
                .WEIGHT_DATA_WIDTH(WEIGHT_DATA_WIDTH),
                .OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH)
            ) PE_module (    
                .clk(clk), 
                .rstn(rstn),
                .in_a(a[i-1]),
                .in_b(in_b_bus[(OUTPUT_DATA_WIDTH*i)+:OUTPUT_DATA_WIDTH]),
                .enable(internal_enable[i-1]),
                .save(save),
                
                .out_a(a[i]),
                .out_b(b[i]),
                .out_enable(internal_enable[i])
            );
        end        
    endgenerate
    
    genvar j;
    generate
        for(j=0; j<=PE_NUM-1; j=j+1) begin
            assign out_b_bus[(OUTPUT_DATA_WIDTH*j)+:OUTPUT_DATA_WIDTH] = b[j];
        end
    endgenerate 
    assign out_a = a[PE_NUM-1];
endmodule
