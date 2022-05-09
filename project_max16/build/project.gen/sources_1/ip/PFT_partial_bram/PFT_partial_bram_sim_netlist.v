// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat May  7 19:41:30 2022
// Host        : KHlaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/catch/Desktop/project_synthesize/project.gen/sources_1/ip/PFT_partial_bram/PFT_partial_bram_sim_netlist.v
// Design      : PFT_partial_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PFT_partial_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module PFT_partial_bram
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [127:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
  wire [127:0]dina;
  wire [127:0]doutb;
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
  wire [127:0]NLW_U0_douta_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.9322 mW" *) 
  (* C_FAMILY = "artix7" *) 
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
  (* C_MEM_TYPE = "1" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  PFT_partial_bram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[127:0]),
        .doutb(doutb),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53440)
`pragma protect data_block
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
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
