// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Feb 25 09:17:04 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [8:0]addra;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  cacheTagRam_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20288)
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
