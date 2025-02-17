// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Feb 16 11:39:40 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/qubeck/Documents/Development/ProjektyVHDL/WukongBoard/tangerineA7_100/tangerineA7_100.gen/sources_1/ip/cacheTagRam/cacheTagRam_sim_netlist.v
// Design      : cacheTagRam
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cacheTagRam,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module cacheTagRam
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "cacheTagRam.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  cacheTagRam_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20224)
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
