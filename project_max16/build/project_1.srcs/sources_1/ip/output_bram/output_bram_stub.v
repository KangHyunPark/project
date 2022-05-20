// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed May 11 17:37:03 2022
// Host        : comparch.snu.ac.kr running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/ipa/junseo/tmp/khp/mesorasi/project/project_max16/build/project_1.srcs/sources_1/ip/output_bram/output_bram_stub.v
// Design      : output_bram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *)
module output_bram(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[13:0],dina[127:0],clkb,addrb[13:0],doutb[127:0]" */;
  input clka;
  input [0:0]wea;
  input [13:0]addra;
  input [127:0]dina;
  input clkb;
  input [13:0]addrb;
  output [127:0]doutb;
endmodule
