// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat May  7 19:41:07 2022
// Host        : KHlaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/catch/Desktop/project_synthesize/project.gen/sources_1/ip/weight_bram/weight_bram_stub.v
// Design      : weight_bram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *)
module weight_bram(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[14:0],dina[127:0],clkb,addrb[14:0],doutb[127:0]" */;
  input clka;
  input [0:0]wea;
  input [14:0]addra;
  input [127:0]dina;
  input clkb;
  input [14:0]addrb;
  output [127:0]doutb;
endmodule
