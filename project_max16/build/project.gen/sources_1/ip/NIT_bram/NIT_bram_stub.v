// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat May  7 19:41:20 2022
// Host        : KHlaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/catch/Desktop/project_synthesize/project.gen/sources_1/ip/NIT_bram/NIT_bram_stub.v
// Design      : NIT_bram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *)
module NIT_bram(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[11:0],dina[329:0],clkb,addrb[11:0],doutb[329:0]" */;
  input clka;
  input [0:0]wea;
  input [11:0]addra;
  input [329:0]dina;
  input clkb;
  input [11:0]addrb;
  output [329:0]doutb;
endmodule
