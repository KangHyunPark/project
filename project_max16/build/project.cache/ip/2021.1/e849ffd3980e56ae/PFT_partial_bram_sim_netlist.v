// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat May  7 02:37:51 2022
// Host        : KHlaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PFT_partial_bram_sim_netlist.v
// Design      : PFT_partial_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvd900-3-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PFT_partial_bram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.068799 mW" *) 
  (* C_FAMILY = "kintexuplus" *) 
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
  (* C_XDEVICEFAMILY = "kintexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57088)
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
