
module PFT
#(
    parameter integer PFT_addr_width = 5,
    parameter integer PFT_data_width = 8,
    parameter integer PE_COL = 16,
    parameter integer PFT_bank = 32
    )
(   
    input wire clk,
    input wire [(PFT_addr_width*PFT_bank)-1:0] PFT_raddr,
    input wire [(PFT_bank-1):0] write,
    input wire [PFT_addr_width-1:0] PFT_waddr,
    input wire [(PFT_data_width*PE_COL)-1:0] din,
    input wire [(PFT_bank-1):0] valid, // bank º±≈√
    input wire is_centroid,
    
    output wire [(PFT_bank*PFT_data_width*PE_COL)-1:0] dout
    );
    
    wire [(PFT_data_width*PE_COL)-1:0] dout_temp [PFT_bank-1:0];
    wire [(PFT_data_width*PFT_bank)-1:0] dout_temp2 [PE_COL-1:0];
    wire [(PFT_data_width*PFT_bank*PE_COL)-1:0] dout_temp3;
    wire [(PFT_data_width*PE_COL)-1:0] centroid;
    wire [4:0] centroid_bank;
    
    genvar i;
	generate
		for(i=0; i<=PFT_bank-1; i=i+1) begin
			simple_sram # (
				.addr_width(PFT_addr_width), // 32bank
				.data_width(PFT_data_width*PE_COL)
			) PFT_bank (
				.clk(clk),
				.waddr(PFT_waddr),
				.raddr(PFT_raddr[(PFT_addr_width*i)+:PFT_addr_width]),
				.write(write[i]),
				.din(din),
				
				.dout(dout_temp[i])
			);
		end
	endgenerate
	
    generate
		for(i=0; i<= PFT_bank-1; i=i+1) begin
            assign dout_temp2[0][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(0*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[1][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(1*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[2][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(2*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[3][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(3*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[4][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(4*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[5][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(5*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[6][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(6*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[7][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(7*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[8][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(8*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[9][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(9*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[10][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(10*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[11][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(11*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[12][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(12*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[13][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(13*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[14][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(14*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
            assign dout_temp2[15][(PFT_data_width*i)+:PFT_data_width] = valid[i] ? dout_temp[i][(15*PFT_data_width)+:PFT_data_width] : {1'b1,{(PFT_data_width-1){1'b0}}};
		end
	endgenerate
	
    assign centroid = dout_temp[centroid_bank];
    
    generate 
		for(i=0; i<= PE_COL-1; i=i+1) begin
		  assign dout_temp3[((PFT_data_width*PFT_bank)*i)+:PFT_data_width*PFT_bank] = dout_temp2[i];
		end
	endgenerate
	
	assign dout = is_centroid ? centroid : dout_temp3;
	
	encoder32x5 u_encoder32x5 (
	   .din(valid),
	   
	   .dout(centroid_bank)
	);

endmodule
