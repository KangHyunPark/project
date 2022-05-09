// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat May  7 19:41:29 2022
// Host        : KHlaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PFT_partial_bram_sim_netlist.v
// Design      : PFT_partial_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53520)
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
