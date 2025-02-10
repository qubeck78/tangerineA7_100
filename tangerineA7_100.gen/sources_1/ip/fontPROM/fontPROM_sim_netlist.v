// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Feb  9 00:36:09 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/qubeck/Documents/Development/ProjektyVHDL/WukongBoard/tangerineA7_100/tangerineA7_100.gen/sources_1/ip/fontPROM/fontPROM_sim_netlist.v
// Design      : fontPROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fontPROM,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module fontPROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2196 mW" *) 
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
  (* C_INIT_FILE = "fontPROM.mem" *) 
  (* C_INIT_FILE_NAME = "fontPROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fontPROM_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17680)
`pragma protect data_block
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
eQntXtBOV97Z/Q==
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
