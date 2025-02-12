// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Feb 11 10:50:45 2025
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
L39gRdzsfdJ8jQ==
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
