// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat May  7 02:16:50 2022
// Host        : KHlaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PFT_partial_bram_sim_netlist.v
// Design      : PFT_partial_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PFT_partial_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.4011 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "PFT_partial_bram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52112)
`pragma protect data_block
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
umppQkocEsZ57WGFNqU=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
