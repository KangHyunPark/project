-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed May 11 13:01:05 2022
-- Host        : comparch.snu.ac.kr running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ipa/junseo/tmp/khp/mesorasi/project/project_max16/build/project_1.srcs/sources_1/ip/PFT_partial_bram/PFT_partial_bram_stub.vhdl
-- Design      : PFT_partial_bram
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tffg1156-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PFT_partial_bram is
  Port ( 
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 127 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end PFT_partial_bram;

architecture stub of PFT_partial_bram is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,wea[0:0],addra[4:0],dina[127:0],clkb,addrb[4:0],doutb[127:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2020.1";
begin
end;