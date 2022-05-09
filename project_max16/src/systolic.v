`timescale 1ns / 1ps

module systolic
#(
    parameter integer PE_ROW = 16,
    parameter integer PE_COL = 16,
    parameter integer INPUT_DATA_WIDTH = 8,
    parameter integer WEIGHT_DATA_WIDTH = 8,
    parameter integer OUTPUT_DATA_WIDTH = 24
    )
(
    input wire clk,
    input wire rstn,
    input wire [(INPUT_DATA_WIDTH*PE_ROW)-1:0] in_a_bus,
    input wire [(INPUT_DATA_WIDTH*PE_COL)-1:0] in_b_bus, // connect 0 or partial sum
    input wire [PE_ROW-1:0] enable,
    input wire save,
    
    output wire [(INPUT_DATA_WIDTH*PE_ROW)-1:0] out_a_bus, // for debugging
    output wire [(INPUT_DATA_WIDTH*PE_COL)-1:0] out_b_bus // 순차적으로 결과가 나옴

    );
    
    wire [(INPUT_DATA_WIDTH-1):0] a [PE_ROW-1:0];
    wire [(OUTPUT_DATA_WIDTH*PE_COL)-1:0] in_b_bus2;
    wire [(OUTPUT_DATA_WIDTH*PE_COL)-1:0] b_bus [PE_ROW-1:0];
    
    systolic_row #(
        .PE_NUM(PE_COL),
        .INPUT_DATA_WIDTH(INPUT_DATA_WIDTH),
        .WEIGHT_DATA_WIDTH(WEIGHT_DATA_WIDTH),
        .OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH)
    ) systolic_row_start (
        .clk(clk), 
        .rstn(rstn),
        .in_a(in_a_bus[(INPUT_DATA_WIDTH-1):0]),
        .in_b_bus(in_b_bus2),
        .enable(enable[0]),
        .save(save),
        
        .out_a(a[0]),
        .out_b_bus(b_bus[0])
        );
        
    genvar i;
    generate
        for(i=1; i<=PE_ROW-1; i=i+1) begin
            systolic_row #(
                .PE_NUM(PE_COL),
                .INPUT_DATA_WIDTH(INPUT_DATA_WIDTH),
                .WEIGHT_DATA_WIDTH(WEIGHT_DATA_WIDTH),
                .OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH)
            ) systolic_row_module (
                .clk(clk), 
                .rstn(rstn),
                .in_a(in_a_bus[(INPUT_DATA_WIDTH*i)+:INPUT_DATA_WIDTH]),
                .in_b_bus(b_bus[i-1]),
                .enable(enable[i]),
                .save(save),
                
                .out_a(a[i]),
                .out_b_bus(b_bus[i])
                );
        end         
    endgenerate
    
    genvar j;
    generate
        for(j=0; j<=PE_ROW-1; j=j+1) begin
            assign out_a_bus[(INPUT_DATA_WIDTH*j)+:INPUT_DATA_WIDTH] = a[j];
        end
    endgenerate
    
    generate
        for(j=0; j<=PE_COL-1; j=j+1) begin
            assign in_b_bus2[(OUTPUT_DATA_WIDTH*j)+:OUTPUT_DATA_WIDTH] = in_b_bus[INPUT_DATA_WIDTH*(j+1)-1] ? {{(OUTPUT_DATA_WIDTH-INPUT_DATA_WIDTH){1'b1}},in_b_bus[INPUT_DATA_WIDTH*j+:INPUT_DATA_WIDTH]} :{{(OUTPUT_DATA_WIDTH-INPUT_DATA_WIDTH){1'b0}},in_b_bus[INPUT_DATA_WIDTH*j+:INPUT_DATA_WIDTH]};
        end
    endgenerate
    
    generate
        for(j=0; j<=PE_COL-1; j=j+1) begin
            assign out_b_bus[INPUT_DATA_WIDTH*(j+1)-1] = b_bus[PE_ROW-1][OUTPUT_DATA_WIDTH*(j+1)-1];
            assign out_b_bus[(INPUT_DATA_WIDTH*j)+:(INPUT_DATA_WIDTH-1)] = b_bus[PE_ROW-1][OUTPUT_DATA_WIDTH*(j+1)-1] ? (b_bus[PE_ROW-1][(OUTPUT_DATA_WIDTH*j+14)+:9]==9'b111111111 ? b_bus[PE_ROW-1][(OUTPUT_DATA_WIDTH*j+7)+:7] :7'b0000000) : (b_bus[PE_ROW-1][(OUTPUT_DATA_WIDTH*j+14)+:9]==9'b0000000 ? b_bus[PE_ROW-1][(OUTPUT_DATA_WIDTH*j+7)+:7] : 7'b1111111); 
        end
    endgenerate
endmodule
