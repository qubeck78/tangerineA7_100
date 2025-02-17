// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Feb 16 11:39:40 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cacheTagRam_sim_netlist.v
// Design      : cacheTagRam
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cacheTagRam,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20272)
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
