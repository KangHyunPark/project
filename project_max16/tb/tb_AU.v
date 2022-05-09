`timescale 1ns / 1ps

module tb_AU;

	
    PFT #(
        .PFT_addr_width(PFT_addr_width),
        .PFT_data_width(PFT_data_width),
        .PE_COL(PE_COL),
        .PFT_bank(PFT_bank)
	) u_PFT (
		.clk(clk),
		.PFT_addr(),
		.write(),
		.din(global_buf_dout_b),
		.valid(), 
		.is_centroid(),
		.feature_sel(),
		
		.dout(PFT_dout)
	);
	
	wire [PFT_data_width-1:0] max_module_dout;
	
    max_module32 #(
        .INPUT_DATA_WIDTH(INPUT_DATA_WIDTH)
	) u_max_module32 (
        .clk(clk),
		.previous_data(max_module_dout),
		.din(PFT_dout),
		
		.dout(max_module_dout)
	);

    subtract_module32 #(
        .INPUT_DATA_WIDTH(INPUT_DATA_WIDTH)
	) u_subtract_module32 (
        .clk(clk),
        .rstn(rstn),
		.en_neighbor(),
		.en_centroid(),
		.din(),
		
		.dout()
	);

	simple_sram # (
		.addr_width(NIT_addr_width),
		.data_width((NIT_neighbor+1)*NIT_point_index)
	) NIT (
		.clk(clk),
		.addr(),
		.write(write_NIT),
		.din(NIT_external_data),
		
		.dout()
	);
endmodule
