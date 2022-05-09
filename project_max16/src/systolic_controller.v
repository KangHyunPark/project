`timescale 1ns / 1ps

module systolic_controller
#(
    parameter integer PE_ROW = 16,
    parameter integer global_buf_addr_width = 17
    )
(
    input clk,
    input rstn,
    input start,
    input wire [global_buf_addr_width-1:0] INIT_INPUT_ADDR,
    input wire [global_buf_addr_width-1:0] INIT_WEIGHT_ADDR,
    input wire [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR,
    input wire [12:0] N_SAMPLE,
    input wire [12:0] INPUT_FEATURE_LENGTH,
    input wire [12:0] OUTPUT_FEATURE_LENGTH,
    
    output wire [global_buf_addr_width-1:0] input_weight_addr,
    output reg [global_buf_addr_width-1:0] output_addr,
    output reg save,
    output reg done,
    output reg load_weight_buf,
    output wire write,
    output wire [PE_ROW-1:0] enable_systolic,
    output reg first_partial
    );
    
    reg [2:0] state;
    
    localparam STATE_IDLE = 3'd0,
    STATE_RECEIVE_CONSTANT = 3'd1,
    STATE_LOAD_WEIGHT = 3'd2,
    STATE_CALCULATE = 3'd3,
    STATE_WAIT = 3'd4,
    STATE_WAIT2 = 3'd5,
    STATE_WAIT3 = 3'd6,
    STATE_DONE = 3'd7;
    
    reg [global_buf_addr_width-1:0] INIT_INPUT_ADDR_REG;
    reg [global_buf_addr_width-1:0] INIT_WEIGHT_ADDR_REG;
    reg [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR_REG;
    reg [12:0] N_SAMPLE_REG;
    reg [12:0] INPUT_FEATURE_LENGTH_REG;
    reg [12:0] OUTPUT_FEATURE_LENGTH_REG;
    
    reg [11:0] counter;
    reg [8:0] weight_counter;
    reg [8:0] input_counter;
    reg [3:0] wait_counter;
    
    reg [global_buf_addr_width-1:0] input_addr;
    reg [global_buf_addr_width-1:0] weight_addr;
   
    reg enable;
    reg [PE_ROW-1:0] enable_bus;
    reg [PE_ROW-1:0] enable_bus_buf;
    reg load_weight;
    
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            enable_bus <= {(PE_ROW){1'b0}};
            first_partial <= 1'b0;
        end
        else begin
            enable_bus <= {enable_bus[PE_ROW-2:0],enable};
            enable_bus_buf <= enable_bus;
            load_weight_buf <= load_weight;
            if(input_counter == 9'b000000001) first_partial <= 1'b1;
            else first_partial <= 1'b0;
        end
    end
    
    assign enable_systolic = enable_bus_buf;
    assign write = enable;
    
    always @(posedge clk or negedge rstn) begin
        if(!rstn) begin
            input_addr <= {(global_buf_addr_width){1'b0}};
            weight_addr <= {(global_buf_addr_width){1'b0}};
            output_addr <= {(global_buf_addr_width){1'b0}};
            state <= 3'b000;
            counter <= {12{1'b0}};
            input_counter <= {{8{1'b0}},1'b1};
            weight_counter <= {9{1'b0}};
            wait_counter <= 4'b0000;
            INIT_INPUT_ADDR_REG <= {(global_buf_addr_width){1'b0}};
            INIT_WEIGHT_ADDR_REG <= {(global_buf_addr_width){1'b0}};
            INIT_OUTPUT_ADDR_REG <= {(global_buf_addr_width){1'b0}};
            N_SAMPLE_REG <= {13{1'b0}};
            INPUT_FEATURE_LENGTH_REG <= {13{1'b0}};
            OUTPUT_FEATURE_LENGTH_REG <= {13{1'b0}};
            save <= 1'b0;
            done <= 1'b0;
            load_weight <= 1'b0;
            enable <= 1'b0;
        end
        else begin
            case (state)
                STATE_IDLE: begin
                    input_addr <= {(global_buf_addr_width){1'b0}};
                    weight_addr <= {(global_buf_addr_width){1'b0}};
                    output_addr <= {(global_buf_addr_width){1'b0}};
                    counter <= {12{1'b0}};
                    input_counter <= {{8{1'b0}},1'b1};
                    weight_counter <= {9{1'b0}};
                    save <= 1'b0;
                    done <= 1'b0;
                    load_weight <= 1'b0;
                    if(start)
                        state <= STATE_RECEIVE_CONSTANT;
                end
                STATE_RECEIVE_CONSTANT: begin
                    input_addr <= INIT_INPUT_ADDR;
                    weight_addr <= INIT_WEIGHT_ADDR;
                    output_addr <= INIT_OUTPUT_ADDR;
                    state <= 3'b000;
                    INIT_INPUT_ADDR_REG <= INIT_INPUT_ADDR;
                    INIT_WEIGHT_ADDR_REG <= INIT_WEIGHT_ADDR;
                    INIT_OUTPUT_ADDR_REG <= INIT_OUTPUT_ADDR;
                    N_SAMPLE_REG <= N_SAMPLE;
                    INPUT_FEATURE_LENGTH_REG <= INPUT_FEATURE_LENGTH;
                    OUTPUT_FEATURE_LENGTH_REG <=  OUTPUT_FEATURE_LENGTH;
                    state <= STATE_LOAD_WEIGHT;
                end
                STATE_LOAD_WEIGHT: begin
                    enable <= 1'b0;
                    if(input_counter == (INPUT_FEATURE_LENGTH_REG >> 4) + 1) begin
                        state <= STATE_WAIT;
                    end
                    else begin
                        load_weight <= 1'b1;
                        if(counter == 12'b000000010000) begin
                            weight_counter <= weight_counter+1;
                            INIT_WEIGHT_ADDR_REG <= INIT_WEIGHT_ADDR_REG + INPUT_FEATURE_LENGTH_REG;
                            counter <= {12{1'b0}};
                            save <= 1'b1;
                            state <= STATE_CALCULATE;
                        end
                        else begin
                            weight_addr <= INIT_WEIGHT_ADDR_REG + (4'b1111-counter[3:0])*(INPUT_FEATURE_LENGTH_REG>>4);  
                            counter <= counter+1;
                            state <= STATE_LOAD_WEIGHT;
                        end
                    end
                end
                STATE_CALCULATE: begin
                    load_weight <= 1'b0;
                    save <= 1'b0;
                    if(counter == N_SAMPLE_REG) begin
                        if(weight_counter == (OUTPUT_FEATURE_LENGTH_REG>>4)) begin
                            weight_counter <= {9{1'b0}};
                            INIT_INPUT_ADDR_REG <= INIT_INPUT_ADDR + input_counter;
                            INIT_WEIGHT_ADDR_REG <= INIT_WEIGHT_ADDR + input_counter;
                            INIT_OUTPUT_ADDR_REG <= INIT_OUTPUT_ADDR;
                            input_counter <= input_counter+1;
                            state <= STATE_WAIT;
                        end
                        else begin
                            INIT_OUTPUT_ADDR_REG <= INIT_OUTPUT_ADDR_REG + 1'b1;
                            state <= STATE_WAIT;
                        end
                        enable <= 1'b0;
                        counter <= {12{1'b0}};
                        input_addr <= INIT_INPUT_ADDR_REG + counter*(INPUT_FEATURE_LENGTH_REG>>4);
                        output_addr <= INIT_OUTPUT_ADDR_REG + counter*(OUTPUT_FEATURE_LENGTH_REG>>4);
                    end
                    else begin
                        enable <= 1'b1;
                        input_addr <= INIT_INPUT_ADDR_REG + counter*(INPUT_FEATURE_LENGTH_REG>>4);
                        output_addr <= INIT_OUTPUT_ADDR_REG + counter*(OUTPUT_FEATURE_LENGTH_REG>>4);
                        counter <= counter+1;
                        state <= STATE_CALCULATE;
                    end
                end
                STATE_WAIT: begin   
                    enable <= 1'b0;
                    if(wait_counter == 4'b1111) begin
                        if(input_counter == (INPUT_FEATURE_LENGTH_REG >> 4)+1) begin
                            state <= STATE_WAIT2;
                            wait_counter <= 4'b0000;
                        end
                        else begin
                            state <= STATE_LOAD_WEIGHT;
                            wait_counter <= 4'b0000;
                        end
                    end
                    else begin
                        wait_counter <= wait_counter+1;
                        state <= STATE_WAIT;
                    end
                end
                STATE_WAIT2: begin   
                    if(wait_counter == 4'b1111) begin
                            state <= STATE_WAIT3;
                            wait_counter <= 4'b0000;
                        end
                    else begin
                        wait_counter <= wait_counter+1;
                        state <= STATE_WAIT2;
                    end
                end
                STATE_WAIT3: begin   
                    if(wait_counter == 4'b1111) begin
                            state <= STATE_DONE;
                            wait_counter <= 4'b0000;
                        end
                    else begin
                        wait_counter <= wait_counter+1;
                        state <= STATE_WAIT3;
                    end
                end
                STATE_DONE: begin
                    done <= 1'b1;
                    state <= STATE_IDLE;
                end
            endcase
        end
    end  
    
    assign input_weight_addr = (state == STATE_LOAD_WEIGHT) ? weight_addr : input_addr;
endmodule
