`timescale 1ns / 1ps

module controller
#(
    parameter integer global_buf_addr_width = 17,
    parameter integer bank = 32,
    parameter integer log_bank = 5,
    parameter integer microaddr_width = 5
    )
(   
    input clk,
    input rstn,
    input start,
    input LOAD_DONE,
    input systolic_done,
    input aggregation_done,
    input wire [12:0] N_SAMPLE,
    input wire [global_buf_addr_width-1:0] INIT_INPUT_ADDR,
    input wire [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR,
    input wire [12:0] OUTPUT_FEATURE_LENGTH,

    output reg load_data,
    output wire load_PFT,
    output reg is_aggregation,
    output reg start_systolic,
    output reg start_aggregation,
    output reg [global_buf_addr_width-1:0] global_buf_raddr,
    output reg [global_buf_addr_width-1:0] global_buf_waddr,
    output reg [(log_bank+microaddr_width)-1:0] PFT_waddr,
    output reg done
    );
    
    reg [2:0] state;
    
    localparam STATE_IDLE = 3'd0,
    STATE_LOAD_DATA = 3'd1,
    STATE_SYSTOLIC_START = 3'd2,
    STATE_SYSTOLIC = 3'd3,
    STATE_LOAD_PFT = 3'd4,
    STATE_AGGREGATION_START = 3'd5,
    STATE_AGGREGATION = 3'd6,
    STATE_DONE = 3'd7;
    
    reg [12:0] N_SAMPLE_REG;
    reg [global_buf_addr_width-1:0] INIT_INPUT_ADDR_REG;
    reg [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR_REG;
    reg [12:0] OUTPUT_FEATURE_LENGTH_REG;
    
    reg [12:0] counter;
    reg [12:0] agg_counter;
    reg [12:0] sample_counter;
    
    assign load_PFT = (state == STATE_LOAD_PFT && counter != N_SAMPLE_REG ) ? 1'b1 : 1'b0;
    
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            state <= STATE_IDLE;
            load_data <= 1'b0;
            is_aggregation <= 1'b0;
            start_aggregation <= 1'b0;
            start_systolic <= 1'b0;
            N_SAMPLE_REG <= {13{1'b0}};
            INIT_INPUT_ADDR_REG <= {(global_buf_addr_width){1'b0}};
            INIT_OUTPUT_ADDR_REG <= {(global_buf_addr_width){1'b0}};
            OUTPUT_FEATURE_LENGTH_REG <= {13{1'b0}};
            global_buf_raddr <= {(global_buf_addr_width){1'b0}};
            global_buf_waddr <= {(global_buf_addr_width){1'b0}};
            PFT_waddr <= {(log_bank+microaddr_width){1'b0}};
            counter <= {13{1'b0}};
            agg_counter <= {13{1'b0}};
            sample_counter <= {13{1'b0}};
            done <= 1'b0;
        end
        else begin
            case(state)
                STATE_IDLE : begin
                    if(start) state <= STATE_LOAD_DATA;
                    else state <= STATE_IDLE;
                    done <= 1'b0;
                end
                STATE_LOAD_DATA : begin
                    if(LOAD_DONE) begin
                        load_data <= 1'b0;
                        state <= STATE_SYSTOLIC_START;
                    end
                    else begin
                        load_data <= 1'b1;
                        state <= STATE_LOAD_DATA;
                    end
                end
                STATE_SYSTOLIC_START : begin
                    start_systolic <= 1'b1;
                    state <= STATE_SYSTOLIC;
                    N_SAMPLE_REG <= N_SAMPLE;
                    INIT_INPUT_ADDR_REG <= INIT_INPUT_ADDR;
                    INIT_OUTPUT_ADDR_REG <= INIT_OUTPUT_ADDR;
                    OUTPUT_FEATURE_LENGTH_REG <= OUTPUT_FEATURE_LENGTH;
                    global_buf_raddr <= INIT_OUTPUT_ADDR;
                    global_buf_waddr <= INIT_INPUT_ADDR;
                    PFT_waddr <= {(log_bank+microaddr_width){1'b0}};
                end
                STATE_SYSTOLIC : begin
                    start_systolic <= 1'b0;
                    if(systolic_done) begin
                        state <= STATE_LOAD_PFT;
                    end
                    else begin
                        state <= STATE_SYSTOLIC;
                    end
                end
                STATE_LOAD_PFT : begin
                    if(counter == N_SAMPLE_REG) begin
                        counter <= {13{1'b0}};
                        global_buf_raddr <= INIT_OUTPUT_ADDR_REG + 1'b1 + agg_counter;
                        PFT_waddr <= {(log_bank+microaddr_width){1'b0}};
                        state <= STATE_AGGREGATION_START;
                    end
                    else begin
                        global_buf_raddr <= global_buf_raddr + (OUTPUT_FEATURE_LENGTH_REG >> 4);
                        PFT_waddr <= PFT_waddr + 1'b1;
                        counter <= counter + 1'b1;
                        state <= STATE_LOAD_PFT;
                    end
                end
                STATE_AGGREGATION_START : begin
                    start_aggregation <= 1'b1;
                    state <= STATE_AGGREGATION;
                    agg_counter <= agg_counter+1;
                    is_aggregation <= 1'b1;
                end
                STATE_AGGREGATION : begin
                    start_aggregation <= 1'b0;
                    if(aggregation_done) begin
                        if (sample_counter == N_SAMPLE_REG - 1) begin
                            if (agg_counter == (OUTPUT_FEATURE_LENGTH_REG >> 4)) begin
                                state <= STATE_DONE;
                                agg_counter <= {13{1'b0}};
                                is_aggregation <= 1'b0;
                                sample_counter <= {13{1'b0}};
                            end
                            else begin
                                state <= STATE_LOAD_PFT;
                                global_buf_waddr <= INIT_INPUT_ADDR + agg_counter;
                                sample_counter <= {13{1'b0}};
                                is_aggregation <= 1'b0;
                                sample_counter <= {13{1'b0}};
                            end
                        end
                        else begin
                            global_buf_waddr <= global_buf_waddr + (OUTPUT_FEATURE_LENGTH_REG >> 4);
                            state <= STATE_AGGREGATION;
                            sample_counter <= sample_counter + 1;
                        end
                    end
                    else begin
                        state <= STATE_AGGREGATION;
                    end
                end
                STATE_DONE: begin
                    done <= 1'b1;
                    state <= STATE_IDLE;
                end
            endcase
        end    
    end
    
    
endmodule