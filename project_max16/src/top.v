
 module top
#(
    parameter DATA_WIDTH = 8,
    parameter length = 16,
    
    parameter NIT_addr_width =12,
    parameter NIT_neighbor = 32,
    parameter NIT_point_index = 10,
    parameter PFT_addr_width = 5,
    parameter PE_ROW = 16,
    parameter PE_COL = 16,
    parameter PFT_bank = 32,
    parameter log_bank = 5,
    parameter microaddr_width = 5,
   
    parameter global_buf_addr_width = 17,
    parameter OUTPUT_DATA_WIDTH = 24
    )
(
    input wire clk,
    input wire rstn,
    
    input wire start,
    input wire LOAD_DONE,
    input wire [12:0] N_SAMPLE,
    input wire [global_buf_addr_width-1:0] INIT_INPUT_ADDR,
    input wire [global_buf_addr_width-1:0] INIT_WEIGHT_ADDR,
    input wire [global_buf_addr_width-1:0] INIT_OUTPUT_ADDR,
    input wire [12:0] INPUT_FEATURE_LENGTH,
    input wire [12:0] OUTPUT_FEATURE_LENGTH,

    input wire global_buf_write_external,
    input wire [global_buf_addr_width-1:0] waddr_external,
    input wire [NIT_addr_width-1:0] NIT_addr_external,
    
    input wire [DATA_WIDTH*length-1:0] GB_data_line,
    input wire [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_external_data,
    
    output wire done
    );

    wire systolic_done;
    wire aggregation_done;
    
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
        
    wire [DATA_WIDTH*length-1:0] din;
    wire [DATA_WIDTH*length-1:0] din_temp;
    wire [DATA_WIDTH*length-1:0] dout_a;
    wire [DATA_WIDTH*length-1:0] dout_b;
    wire [global_buf_addr_width-1:0] waddr;
    wire [global_buf_addr_width-1:0] waddr_temp;
    wire [global_buf_addr_width-1:0] waddr_internal;
    wire [global_buf_addr_width-1:0] waddr_internal_temp;
        
	wire [PE_ROW*DATA_WIDTH-1:0] b_buf_in;
	wire [PE_ROW*DATA_WIDTH-1:0] b_buf_out;
	wire [PE_ROW*DATA_WIDTH-1:0] a_buf_out;
	wire [PE_ROW*DATA_WIDTH-1:0] in_a_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] out_b_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] out_a_bus;
	wire [PE_ROW*DATA_WIDTH-1:0] systolic_result;
	
    wire [NIT_addr_width-1:0] NIT_addr_internal;
    wire [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_dout;
	
    wire [PFT_bank*PFT_addr_width-1:0] PFT_addr_internal;
    wire [PFT_addr_width-1:0] PFT_microaddr;
    wire [PFT_bank-1:0] write_PFT;
    wire [PFT_bank-1:0] write_PFT_temp;
    wire [PFT_bank-1:0] valid;
    wire is_centroid;
    wire [(PFT_bank*DATA_WIDTH*PE_COL)-1:0] PFT_dout;

    wire is_neighbor;
    wire NIT_done;
    wire [1:0] repetition;
	
    wire [PE_COL*DATA_WIDTH-1:0] max_module_dout;
    wire [PE_ROW*DATA_WIDTH-1:0] subtract_module_dout;
    
    genvar j;
    
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

    PFT_bram u_PFT (
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
        for (j=0 ; j<=PE_COL-1; j=j+1) begin
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
