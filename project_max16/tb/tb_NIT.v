`timescale 1ns / 1ps

module tb_NIT;

    parameter CLK_PERIOD = 2;
    parameter HALF_CLK_PERIOD = CLK_PERIOD/2;
    
    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 12;
    parameter length = 16;
    
    parameter NIT_addr_width =12;
    parameter NIT_neighbor = 32;
    parameter NIT_point_index = 10;
    parameter PFT_addr_width = 5;
    parameter PFT_data_width = 8;
    parameter PE_ROW = 16;
    parameter PE_COL = 16;
    parameter PFT_bank = 32;
    
    reg clk;
    reg rstn;
    
    reg write_NIT;
    reg write_PFT;
    reg [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_data [0:15];
    reg [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_external_data;
    reg [NIT_addr_width-1:0] NIT_addr_external;
    reg start;
    reg [PFT_data_width*PE_COL-1:0] PFT_data [0:1023];
    reg [PFT_data_width*PE_COL-1:0] PFT_external_data;
    reg [9:0] PFT_addr_write;
    reg [12:0] N_SAMPLE;
    
    wire [NIT_addr_width-1:0] NIT_addr_internal;
    wire [(NIT_neighbor+1)*NIT_point_index-1:0] NIT_dout;
    wire [PFT_bank-1:0] valid;
    wire is_centroid;
    wire is_neighbor;
    wire [PFT_bank*PFT_addr_width-1:0] PFT_addr_internal;
    wire [PFT_addr_width-1:0] PFT_addr_external;
    wire [PFT_bank-1:0] write;
    wire [PFT_bank-1:0] write_temp;
    wire [(PFT_bank*PFT_data_width*PE_COL)-1:0] PFT_dout;
    wire NIT_done;
    wire [1:0] repetition;
    wire [PE_COL*DATA_WIDTH-1:0] max_module_dout;
    wire [PE_ROW*DATA_WIDTH-1:0] subtract_module_dout;
    wire subtract_done;
    
    integer i;
    genvar j;
    
    reg flag;
    
    initial clk = 1'b1;
    always #HALF_CLK_PERIOD clk = ~clk;
    
    initial begin
        write_NIT <= 1'b0;
        write_PFT <= 1'b0;
        start <= 1'b0;
        N_SAMPLE <= 12'b000000000100;
        NIT_addr_external <= {(NIT_addr_width){1'b0}};
        PFT_addr_write <= {(PFT_addr_width){1'b0}};

        rstn <= 1'b0;
        flag <= 1'b1;
        
        repeat (10)
        @(posedge clk); 
        
        $readmemb("NIT_input.txt", NIT_data);
        $readmemb("PFT_input.txt", PFT_data);
        rstn = 1'b1;   
        
        repeat (10)
        @(posedge clk); 

        for(i=0; i<16; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    NIT_addr_external <= NIT_addr_external+1;
                end
                else begin
                    flag <= 1'b0;
                end
                write_NIT <= 1'b1;
                NIT_external_data <= NIT_data[i];
            end
        end
        
        @(posedge clk)
        write_NIT <= 1'b0;
        flag <= 1'b1;
        
        repeat(10)
        @(posedge clk);
        
        for(i=0; i<1024; i=i+1) begin
            @(posedge clk) begin
                if(!flag) begin
                    PFT_addr_write <= PFT_addr_write+1;
                end
                else begin
                    flag <= 1'b0;
                end
                write_PFT <= 1'b1;
                PFT_external_data <= PFT_data[i];
            end
        end
        
        @(posedge clk)
        flag <= 1'b1;
        write_PFT <= 1'b0;
        
        @(posedge clk) start <= 1'b1;
        
        @(posedge clk) start <= 1'b0;
        
        wait(NIT_done);
        repeat(10)
        @(posedge clk);
        $finish;
    end
    

	// NIT
	simple_sram # (
		.addr_width(NIT_addr_width),
		.data_width((NIT_neighbor+1)*NIT_point_index)
	) NIT (
		.clk(clk),
		.waddr(NIT_addr_external),
		.raddr(NIT_addr_internal),
		.write(write_NIT),
		.din(NIT_external_data),
		
		.dout(NIT_dout)
	);
	
    PFT #(
        .PFT_addr_width(PFT_addr_width),
        .PFT_data_width(PFT_data_width),
        .PE_COL(PE_COL),
        .PFT_bank(PFT_bank)
	) u_PFT (
		.clk(clk),
		.PFT_raddr(PFT_addr_internal),
		.PFT_waddr(PFT_addr_external),
		.write(write),
		.din(PFT_external_data),
		.valid(valid), 
		.is_centroid(is_centroid),
		
		.dout(PFT_dout)
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
		.start(start),
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
        .addr(PFT_addr_write),
    
        .valid(write_temp),
        .microaddr(PFT_addr_external)
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
		.done(subtract_done)
	);
    assign write = write_PFT ? write_temp : {32{1'b0}};
endmodule
