`timescale 1ns / 1ps

module tb_controls;
    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter length = 16;
    
    parameter NIT_addr_width =12;
    parameter NIT_neighbor = 32;
    parameter NIT_point_index = 10;
    parameter PFT_addr_width = 5;
    parameter PFT_data_width = 8;
    parameter PE_ROW = 16;
    parameter PE_COL = 16;
    parameter PFT_bank = 32;
    parameter log_bank = 5;
    parameter microaddr_width = 5;
   
    parameter global_buf_addr_width = 17;
    parameter OUTPUT_DATA_WIDTH = 32;
    
    reg clk;
    reg rstn;
    
////////////////////// control    
	reg start;
    reg LOAD_DONE;
    wire systolic_done;
    wire aggregation_done;
    reg [12:0] N_SAMPLE;
    reg [global_buf_addr_width-1:0] INIT_INPUT_ADDR;
    reg [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR;
    reg [12:0] OUTPUT_FEATURE_LENGTH;

    wire load_data;
    wire load_PFT;
    wire load_PFT_buf;
    wire start_systolic;
    wire start_aggregation;
    wire is_aggregation;
    wire [global_buf_addr_width-1:0] global_buf_raddr;
    wire [global_buf_addr_width-1:0] global_buf_waddr;
    wire [(log_bank+microaddr_width)-1:0] PFT_waddr;
    wire [(log_bank+microaddr_width)-1:0] PFT_waddr_buf;
    wire done;
///////////////////////////////	systolic controller
    reg [global_buf_addr_width-1:0] INIT_WEIGHT_ADDR;
    reg [12:0] INPUT_FEATURE_LENGTH;
    
    wire [global_buf_addr_width-1:0] input_weight_addr;
    wire [global_buf_addr_width-1:0] output_addr;
    wire save;
    wire load_weight;
    wire first_partial;
	wire [PE_ROW-1:0] enable_systolic;
	
	wire write_GB;
	wire write_GB_temp;
    wire write_internal;
    wire write_internal_delayed;
    reg global_buf_write_external;

/////////////////////////////// Global Buffer
    
    wire [DATA_WIDTH*length-1:0] din;
    wire [DATA_WIDTH*length-1:0] din_temp;
    wire [DATA_WIDTH*length-1:0] dout_a;
    wire [DATA_WIDTH*length-1:0] dout_b;
    wire [global_buf_addr_width-1:0] waddr;
    wire [global_buf_addr_width-1:0] waddr_temp;
    wire [global_buf_addr_width-1:0] waddr_internal;
    wire [global_buf_addr_width-1:0] waddr_internal_temp;
    reg [global_buf_addr_width-1:0] waddr_external;

    reg flag;
   
    
	wire [PE_ROW*DATA_WIDTH-1:0] b_buf_in;
	wire [PE_ROW*DATA_WIDTH-1:0] b_buf_out;
	wire [PE_ROW*DATA_WIDTH-1:0] a_buf_out;
	wire [PE_ROW*DATA_WIDTH-1:0] in_a_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] out_b_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] out_a_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] systolic_result;
	
////////////////////////////////// NIT

    reg [NIT_addr_width-1:0] NIT_addr_external;
    wire [NIT_addr_width-1:0] NIT_addr_internal;
    wire [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_dout;
	
	
    wire [PFT_bank*PFT_addr_width-1:0] PFT_addr_internal;
    wire [PFT_addr_width-1:0] PFT_microaddr;
    wire [PFT_bank-1:0] write_PFT;
    wire [PFT_bank-1:0] write_PFT_temp;
    wire [PFT_bank-1:0] valid;
    wire is_centroid;
    wire [(PFT_bank*PFT_data_width*PE_COL)-1:0] PFT_dout;

    wire is_neighbor;
    wire NIT_done;
    wire [1:0] repetition;
	
    wire [PE_COL*DATA_WIDTH-1:0] max_module_dout;
    wire [PE_ROW*DATA_WIDTH-1:0] subtract_module_dout;
    
    integer i;
    genvar j;
    
    reg [DATA_WIDTH*length-1:0] GB_data_input [0:16383];
    reg [DATA_WIDTH*length-1:0] GB_data_weight [0:1023];
    reg [DATA_WIDTH*length-1:0] GB_data_line;
    
    reg [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_data [0:4095];
    reg [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_external_data;
    
    initial clk = 1'b1;
    always #HALF_CLK_PERIOD clk = ~clk;
    
    initial begin
        INIT_INPUT_ADDR <= {(global_buf_addr_width){1'b0}};
        INIT_WEIGHT_ADDR <= {2'b01,{(global_buf_addr_width-2){1'b0}}};
        INIT_OUTPUT_ADDR <= {1'b1,{(global_buf_addr_width-1){1'b0}}};
        N_SAMPLE <= 13'd1024;
        INPUT_FEATURE_LENGTH <= 13'd256;
        OUTPUT_FEATURE_LENGTH <= 13'd64;

        rstn <= 1'b0;
        flag <= 1'b1;
        
        LOAD_DONE <= 1'b0;
        
        start <= 1'b0;
        NIT_addr_external <= {(NIT_addr_width){1'b0}};     
        
        global_buf_write_external <= 1'b0;
        waddr_external <= {(global_buf_addr_width){1'b0}};   
        
        $readmemb("Top_GB_input.txt", GB_data_input);
        $readmemb("Top_GB_weight.txt", GB_data_weight);
        $readmemb("Top_NIT.txt", NIT_data);
        
        repeat (10)
        @(posedge clk); 

        rstn <= 1'b1;   
        
        repeat (10)
        @(posedge clk); 
        
        start <= 1'b1;
        
        @(posedge clk)
        start <= 1'b0;
        
        for(i=0; i<4096; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    NIT_addr_external <= NIT_addr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                NIT_external_data <= NIT_data[i];
            end
        end
        
        @(posedge clk)        
        flag <= 1'b1;
        
        repeat(10)
        @(posedge clk);
        
        waddr_external <= INIT_INPUT_ADDR;
        
        for(i=0; i<16384; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr_external <= waddr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                global_buf_write_external <= 1'b1;
                GB_data_line <= GB_data_input[i];
            end
        end
        
        @(posedge clk)
        global_buf_write_external <= 1'b0;
        waddr_external <= INIT_WEIGHT_ADDR;
        flag <= 1'b1;
        
        for(i=0; i<1024; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    waddr_external <= waddr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                global_buf_write_external <= 1'b1;
                GB_data_line <= GB_data_weight[i];
            end
        end
        
        @(posedge clk)
        global_buf_write_external <= 1'b0;
        flag <= 1'b1;
        LOAD_DONE <= 1'b1;
        
        @(posedge clk)
        LOAD_DONE <= 1'b0;
        
        wait(done)
        repeat(10)
        @(posedge clk);
        $finish;

        
    end
    
    controller #(
        .global_buf_addr_width(global_buf_addr_width),
        .bank(PFT_bank),
        .log_bank(log_bank),
        .microaddr_width(microaddr_width)
	) u_controller (
        .clk(clk),
        .rstn(rstn),
		.start(start),
		.LOAD_DONE(LOAD_DONE),
		.systolic_done(systolic_done),
		.aggregation_done(aggregation_done),
		.INIT_INPUT_ADDR(INIT_INPUT_ADDR),
		.INIT_OUTPUT_ADDR(INIT_OUTPUT_ADDR),
		.N_SAMPLE(N_SAMPLE),
		.OUTPUT_FEATURE_LENGTH(OUTPUT_FEATURE_LENGTH),
		
		.load_data(load_data),
		.load_PFT(load_PFT),
		.start_systolic(start_systolic),
		.start_aggregation(start_aggregation),
		.is_aggregation(is_aggregation),
		.global_buf_raddr(global_buf_raddr),
		.global_buf_waddr(global_buf_waddr),
		.PFT_waddr(PFT_waddr),
		.done(done)
	);
    systolic_controller #(
        .global_buf_addr_width(global_buf_addr_width),
        .PE_ROW(PE_ROW)
	) u_systolic_controller (
        .clk(clk),
        .rstn(rstn),
		.start(start_systolic),
		.INIT_INPUT_ADDR(INIT_INPUT_ADDR),
		.INIT_WEIGHT_ADDR(INIT_WEIGHT_ADDR),
		.INIT_OUTPUT_ADDR(INIT_OUTPUT_ADDR),
		.N_SAMPLE(N_SAMPLE),
		.INPUT_FEATURE_LENGTH(INPUT_FEATURE_LENGTH),
		.OUTPUT_FEATURE_LENGTH(OUTPUT_FEATURE_LENGTH),
		
		.input_weight_addr(input_weight_addr),
		.output_addr(output_addr),
		.save(save),
		.done(systolic_done),
		.load_weight_buf(load_weight),
		.enable_systolic(enable_systolic),
		.first_partial(first_partial),
		.write(write_internal)
	);
	
    systolic #(
		.PE_ROW(PE_ROW),
		.PE_COL(PE_COL),
		.INPUT_DATA_WIDTH(DATA_WIDTH),
		.WEIGHT_DATA_WIDTH(DATA_WIDTH),
		.OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH)
    ) u_systolic (
		.clk(clk),
		.rstn(rstn),
		.in_a_bus(in_a_bus),
		.in_b_bus(b_buf_out), 
		.enable(enable_systolic),
		.save(save),
		
		.out_a_bus(out_a_bus), // for debugging
		.out_b_bus(out_b_bus)
    );
 
     systolic_input_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) systolic_input_buffer_input (
		.clk(clk),
		.rstn(rstn),
		.din(dout_a),
		
		.dout(a_buf_out)
    );
    
    
    systolic_input_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) u_systolic_input_buffer_partialsum (
		.clk(clk),
		.rstn(rstn),
		.din(b_buf_in),
		
		.dout(b_buf_out)
    );
    
    systolic_output_buffer #(
		.DATA_WIDTH(DATA_WIDTH),
		.length(length)
    ) u_systolic_output_buffer (
		.clk(clk),
		.rstn(rstn),
		.din(out_b_bus),
		
		.dout(systolic_result)
    );   
    
    global_buffer # (
        .addr_width(global_buf_addr_width),
        .data_width(DATA_WIDTH*length)
    ) u_global_buffer (
        .clk(clk),
        .waddr(waddr),
        .raddr_a(input_weight_addr), // systolic input, weight
        .raddr_b(waddr_internal_temp), // systolic output
        .write(write_GB), // external signal or after systolic cal
        .din(din),
        
        .dout_a(dout_a), // systolic input, weight
        .dout_b(dout_b) // systolic output
    );

    delay_unit # (
        .DATA_WIDTH(global_buf_addr_width),
        .delay(34)
    ) u_delay_unit_addr (
        .clk(clk),
        .din(waddr_internal_temp),
            
        .dout(waddr_internal)
    );
    
    delay_unit # (
        .DATA_WIDTH(1),
        .delay(34)
    ) u_delay_unit_write (
        .clk(clk),
        .din(write_internal),
            
        .dout(write_internal_delayed)
    );
	// NIT
    NIT_bram u_NIT (
        .clka(clk),
        .addra(NIT_addr_external),
        .dina(NIT_external_data),
        .wea(load_data),
        
        .clkb(clk),
        .addrb(NIT_addr_internal),
        .doutb(NIT_dout)
	);

    PFT #(
        .PFT_addr_width(PFT_addr_width),
        .PFT_data_width(PFT_data_width),
        .PE_COL(PE_COL),
        .PFT_bank(PFT_bank)
	) u_PFT (
		.clk(clk),
		.PFT_raddr(PFT_addr_internal),
		.PFT_waddr(PFT_microaddr),
		.write(write_PFT),
		.din(dout_b),
		.valid(valid), 
		.is_centroid(is_centroid),
		
		.dout(PFT_dout)
	);

    delay_unit # (
        .DATA_WIDTH(log_bank+microaddr_width),
        .delay(1)
    ) u_delay_unit_PFT_waddr (
        .clk(clk),
        .din(PFT_waddr),
            
        .dout(PFT_waddr_buf)
    );
    
    delay_unit # (
        .DATA_WIDTH(1),
        .delay(1)
    ) u_delay_unit_load_PFT (
        .clk(clk),
        .din(load_PFT),
            
        .dout(load_PFT_buf)
    );
    
    address_generator #(
        .input_width((NIT_neighbor+1)*NIT_point_index),
        .bank(PFT_bank),
        .microaddr_width(PFT_addr_width),
        .NIT_addr_width(NIT_addr_width),
        .NIT_point_index(NIT_point_index),
        .PE_COL(PE_COL)
	) u_address_generator (
		.clk(clk),
		.rstn(rstn),
		.neighbor_input(NIT_dout),
		.start(start_aggregation),
		.N_SAMPLE(N_SAMPLE),
		
		.valid(valid), 
		.PFT_addr(PFT_addr_internal),
		.is_centroid(is_centroid),
		.is_neighbor(is_neighbor),
		.NIT_addr(NIT_addr_internal),
		.NIT_done(NIT_done),
		.repetition(repetition)
	);
	
    microaddr_generator u_microaddr_generator (
        .addr(PFT_waddr_buf),
    
        .valid(write_PFT_temp),
        .microaddr(PFT_microaddr)
    );
    
    generate
        for (j=0 ; j<=PE_COL; j=j+1) begin
        max_module32 #(
            .DATA_WIDTH(DATA_WIDTH),
            .bank(PFT_bank)
        ) u_max_module32 (
            .clk(clk),
            .previous_data(max_module_dout[DATA_WIDTH*j+:DATA_WIDTH]),
            .din(PFT_dout[j*DATA_WIDTH*PFT_bank+:DATA_WIDTH*PFT_bank]),
            .repetition(repetition),
            
            .dout(max_module_dout[DATA_WIDTH*j+:DATA_WIDTH])
        );
        end
	endgenerate
	
    subtract_module32 #(
        .INPUT_DATA_WIDTH(DATA_WIDTH),
        .PE_ROW(PE_ROW)
	) u_subtract_module32 (
        .clk(clk),
        .rstn(rstn),
		.is_neighbor(is_neighbor),
		.is_centroid(is_centroid),
		.din_neighbor(max_module_dout),
		.din_centroid(PFT_dout[DATA_WIDTH*PE_ROW-1:0]),
		
		.dout(subtract_module_dout),
		.done(aggregation_done)
	);
	
	assign in_a_bus = load_weight ? dout_a : a_buf_out;
    assign b_buf_in = first_partial ? {128{1'b0}} : dout_b;
	assign din = is_aggregation ? subtract_module_dout : din_temp;
    assign din_temp = load_data ? GB_data_line : systolic_result;
	assign waddr = is_aggregation ? global_buf_waddr : waddr_temp;
    assign waddr_temp = load_data ? waddr_external : waddr_internal;
	assign write_GB = is_aggregation ? aggregation_done : write_GB_temp;
    assign write_GB_temp = load_data ? global_buf_write_external : write_internal_delayed;
	assign write_PFT = load_PFT_buf ? write_PFT_temp : {32{1'b0}};
	assign waddr_internal_temp = load_PFT ? global_buf_raddr : output_addr;
endmodule
