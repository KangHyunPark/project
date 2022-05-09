`timescale 1ns / 1ps

module address_generator
#(
    parameter integer input_width = 330,
    parameter integer bank = 32,
    parameter integer microaddr_width = 5,
    parameter integer NIT_addr_width = 12,
    parameter integer NIT_point_index = 10,
    parameter integer PE_COL = 16
    )
(
    input clk,
    input rstn,
    input [input_width-1:0] neighbor_input,
    input start,
    input [12:0] N_SAMPLE,
    
    output wire [bank-1:0] valid,
    output wire [bank*microaddr_width-1:0] PFT_addr,
    output reg is_centroid,
    output reg is_neighbor,
    output reg [NIT_addr_width-1:0] NIT_addr,
    output reg NIT_done,
    output reg [1:0] repetition
    );
      
    genvar i;
    
    localparam STATE_IDLE = 3'd0;
    localparam STATE_CENTROID = 3'd1;
    localparam STATE_NEIGHBOR = 3'd2;
    localparam STATE_WAIT = 3'd3;
    reg [2:0] state;
    
    wire [bank-1:0] centroid_bank;
    wire [bank-1:0] neighbor_bank;
    wire [bank*bank-1:0] neighbor_bank_temp;
    
    reg [2:0] counter;
    reg [12:0] sample_counter;
    
    wire [microaddr_width-1:0] centroid_PFT_addr_temp;
    wire [bank*microaddr_width-1:0] centroid_PFT_addr;
    wire [bank*microaddr_width-1:0] neighbor_PFT_addr;
    
    
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            is_centroid <= 1'b0;
            is_neighbor <= 1'b0;
            NIT_addr <= {(NIT_addr_width){1'b0}};  
            state <= STATE_IDLE;
            repetition <= 2'b00;
            NIT_done <= 1'b0;
            counter <= 3'b000;
            sample_counter <= {13{1'b0}};
        end
        else begin
            case(state)
                STATE_IDLE : begin
                    if(start) 
                        state <= STATE_CENTROID;
                    NIT_addr <= {(NIT_addr_width){1'b0}};  
                    is_centroid <= 1'b0;
                    is_neighbor <= 1'b0;
                    NIT_addr <= {(NIT_addr_width){1'b0}};
                    repetition <= 2'b00;
                    NIT_done <= 1'b0;
                    counter <= 3'b000;
                    sample_counter <= {13{1'b0}};
                end
                STATE_CENTROID : begin
                    is_centroid <= 1'b1;
                    is_neighbor <= 1'b0;
                    state <= STATE_NEIGHBOR;
                end
                STATE_NEIGHBOR : begin
                    is_centroid <= 1'b0;
                    is_neighbor <= 1'b1;
                    if(sample_counter == N_SAMPLE-1 && repetition == 2'b11) begin
                        NIT_addr <= NIT_addr + 1'b1;
                        repetition <= 2'b00;
                        state <= STATE_WAIT;
                        sample_counter <= {13{1'b0}};
                    end
                    else if(repetition == 2'b11) begin
                        NIT_addr <= NIT_addr + 1'b1;
                        repetition <= 2'b00;
                        state <= STATE_CENTROID;
                        sample_counter <= sample_counter + 1;
                    end
                    else begin
                        NIT_addr <= NIT_addr+1;
                        repetition <= repetition + 1;
                        state <= STATE_NEIGHBOR;
                    end
                end
                STATE_WAIT: begin
                    state <= STATE_IDLE;
                    NIT_done <= 1'b1;
                    is_neighbor <= 1'b0;
                end
            endcase
        end    
    end
    
    microaddr_generator microaddr_generator_centroid (
        .addr(neighbor_input[(input_width-1)-:NIT_point_index]),
    
        .valid(centroid_bank),
        .microaddr(centroid_PFT_addr_temp)
    );
    
    generate 
        for(i=0;i<=bank-1;i=i+1) begin
            microaddr_generator microaddr_generator_neighbor (
                .addr(neighbor_input[NIT_point_index*i+:NIT_point_index]),
            
                .valid(neighbor_bank_temp[i*bank+:bank]),
                .microaddr(neighbor_PFT_addr[microaddr_width*i+:microaddr_width])
            );
        end
    endgenerate 
    	
	valid_generator32 u_valid_generator32 (
	   .din(neighbor_bank_temp),
	   
	   .dout(neighbor_bank)
	);
	
	assign centroid_PFT_addr = {(bank){centroid_PFT_addr_temp}};
	assign valid = is_centroid ? centroid_bank : neighbor_bank;
    assign PFT_addr = is_centroid ? centroid_PFT_addr : neighbor_PFT_addr;
endmodule
