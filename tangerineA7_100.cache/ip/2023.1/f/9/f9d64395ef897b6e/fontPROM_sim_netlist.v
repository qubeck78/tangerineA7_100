// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Feb 11 10:50:45 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fontPROM_sim_netlist.v
// Design      : fontPROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fontPROM,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17744)
`pragma protect data_block
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
s9tOoPDaSrTcZIPLfYgx9xY=
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
