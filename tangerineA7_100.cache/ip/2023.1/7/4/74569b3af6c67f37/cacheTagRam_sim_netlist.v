// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Feb 25 09:17:04 2025
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20336)
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
