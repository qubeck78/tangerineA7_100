//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Feb 13 14:02:39 2025
//Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
//Command     : generate_target tangerineA7_100_wrapper.bd
//Design      : tangerineA7_100_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module tangerineA7_100_wrapper
   (button0,
    button1,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n,
    hdmiClkN,
    hdmiClkP,
    hdmiDN,
    hdmiDP,
    led0,
    led1,
    sdMciClk,
    sdMciCmd,
    sdMciDat,
    sysClk50,
    uartRxd,
    uartTxd);
  input button0;
  input button1;
  output [13:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_cas_n;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_cke;
  output [1:0]ddr3_dm;
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_n;
  inout [1:0]ddr3_dqs_p;
  output [0:0]ddr3_odt;
  output ddr3_ras_n;
  output ddr3_reset_n;
  output ddr3_we_n;
  output hdmiClkN;
  output hdmiClkP;
  output [2:0]hdmiDN;
  output [2:0]hdmiDP;
  output led0;
  output [0:0]led1;
  output sdMciClk;
  output sdMciCmd;
  inout [3:0]sdMciDat;
  input sysClk50;
  input uartRxd;
  output uartTxd;

  wire button0;
  wire button1;
  wire [13:0]ddr3_addr;
  wire [2:0]ddr3_ba;
  wire ddr3_cas_n;
  wire [0:0]ddr3_ck_n;
  wire [0:0]ddr3_ck_p;
  wire [0:0]ddr3_cke;
  wire [1:0]ddr3_dm;
  wire [15:0]ddr3_dq;
  wire [1:0]ddr3_dqs_n;
  wire [1:0]ddr3_dqs_p;
  wire [0:0]ddr3_odt;
  wire ddr3_ras_n;
  wire ddr3_reset_n;
  wire ddr3_we_n;
  wire hdmiClkN;
  wire hdmiClkP;
  wire [2:0]hdmiDN;
  wire [2:0]hdmiDP;
  wire led0;
  wire [0:0]led1;
  wire sdMciClk;
  wire sdMciCmd;
  wire [3:0]sdMciDat;
  wire sysClk50;
  wire uartRxd;
  wire uartTxd;

  tangerineA7_100 tangerineA7_100_i
       (.button0(button0),
        .button1(button1),
        .ddr3_addr(ddr3_addr),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_dm(ddr3_dm),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ddr3_odt),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_we_n(ddr3_we_n),
        .hdmiClkN(hdmiClkN),
        .hdmiClkP(hdmiClkP),
        .hdmiDN(hdmiDN),
        .hdmiDP(hdmiDP),
        .led0(led0),
        .led1(led1),
        .sdMciClk(sdMciClk),
        .sdMciCmd(sdMciCmd),
        .sdMciDat(sdMciDat),
        .sysClk50(sysClk50),
        .uartRxd(uartRxd),
        .uartTxd(uartTxd));
endmodule
