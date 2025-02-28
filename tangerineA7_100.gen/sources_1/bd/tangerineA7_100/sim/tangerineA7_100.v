//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Feb 27 22:45:53 2025
//Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
//Command     : generate_target tangerineA7_100.bd
//Design      : tangerineA7_100
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "tangerineA7_100,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=tangerineA7_100,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "tangerineA7_100.hwdef" *) 
module tangerineA7_100
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
    i2sBClk,
    i2sDOut,
    i2sLRCk,
    i2sSClk,
    led0,
    led1,
    ps2aClock,
    ps2aData,
    ps2bClock,
    ps2bData,
    sdMciClk,
    sdMciCmd,
    sdMciDat,
    sysClk50,
    uartRxd,
    uartTxd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BUTTON0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BUTTON0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input button0;
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
  output i2sBClk;
  output i2sDOut;
  output i2sLRCk;
  output i2sSClk;
  output [0:0]led0;
  output [0:0]led1;
  inout ps2aClock;
  inout ps2aData;
  inout ps2bClock;
  inout ps2bData;
  output sdMciClk;
  output sdMciCmd;
  inout [3:0]sdMciDat;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK50 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK50, CLK_DOMAIN tangerineA7_100_sysClk50, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sysClk50;
  input uartRxd;
  output uartTxd;

  wire [3:0]Net;
  wire [0:0]Net1;
  wire [15:0]Net2;
  wire [1:0]Net3;
  wire [1:0]Net4;
  wire Net5;
  wire Net6;
  wire Net7;
  wire Net8;
  wire Net9;
  wire button0_1;
  wire button1_1;
  wire clk_wiz_0_clk25;
  wire clk_wiz_0_clk320;
  wire clk_wiz_0_clk320ps;
  wire clk_wiz_0_locked;
  wire clk_wiz_1_clk200;
  wire clk_wiz_1_locked;
  wire clk_wiz_2_clk162_5;
  wire clk_wiz_2_clk40_625;
  wire hdmiOut_0_hdmiClkN;
  wire hdmiOut_0_hdmiClkP;
  wire [2:0]hdmiOut_0_hdmiDN;
  wire [2:0]hdmiOut_0_hdmiDP;
  wire sysClk50_1;
  wire [13:0]tangerineMIGWrapper_0_ddr3_addr;
  wire [2:0]tangerineMIGWrapper_0_ddr3_ba;
  wire tangerineMIGWrapper_0_ddr3_cas_n;
  wire [0:0]tangerineMIGWrapper_0_ddr3_ck_n;
  wire [0:0]tangerineMIGWrapper_0_ddr3_ck_p;
  wire [0:0]tangerineMIGWrapper_0_ddr3_cke;
  wire [1:0]tangerineMIGWrapper_0_ddr3_dm;
  wire [0:0]tangerineMIGWrapper_0_ddr3_odt;
  wire tangerineMIGWrapper_0_ddr3_ras_n;
  wire tangerineMIGWrapper_0_ddr3_reset_n;
  wire tangerineMIGWrapper_0_ddr3_we_n;
  wire tangerineMIGWrapper_0_mmcm_locked;
  wire tangerineMIGWrapper_0_ui_clk;
  wire tangerineSOC_0_i2sBClk;
  wire tangerineSOC_0_i2sDOut;
  wire tangerineSOC_0_i2sLRCk;
  wire tangerineSOC_0_i2sSClk;
  wire [1:0]tangerineSOC_0_leds;
  wire [31:0]tangerineSOC_0_m00_axi_ARADDR;
  wire [1:0]tangerineSOC_0_m00_axi_ARBURST;
  wire [3:0]tangerineSOC_0_m00_axi_ARCACHE;
  wire [3:0]tangerineSOC_0_m00_axi_ARID;
  wire [7:0]tangerineSOC_0_m00_axi_ARLEN;
  wire tangerineSOC_0_m00_axi_ARLOCK;
  wire [2:0]tangerineSOC_0_m00_axi_ARPROT;
  wire tangerineSOC_0_m00_axi_ARREADY;
  wire [2:0]tangerineSOC_0_m00_axi_ARSIZE;
  wire tangerineSOC_0_m00_axi_ARVALID;
  wire [31:0]tangerineSOC_0_m00_axi_AWADDR;
  wire [1:0]tangerineSOC_0_m00_axi_AWBURST;
  wire [3:0]tangerineSOC_0_m00_axi_AWCACHE;
  wire [3:0]tangerineSOC_0_m00_axi_AWID;
  wire [7:0]tangerineSOC_0_m00_axi_AWLEN;
  wire tangerineSOC_0_m00_axi_AWLOCK;
  wire [2:0]tangerineSOC_0_m00_axi_AWPROT;
  wire tangerineSOC_0_m00_axi_AWREADY;
  wire [2:0]tangerineSOC_0_m00_axi_AWSIZE;
  wire tangerineSOC_0_m00_axi_AWVALID;
  wire tangerineSOC_0_m00_axi_BREADY;
  wire [1:0]tangerineSOC_0_m00_axi_BRESP;
  wire tangerineSOC_0_m00_axi_BVALID;
  wire [127:0]tangerineSOC_0_m00_axi_RDATA;
  wire [3:0]tangerineSOC_0_m00_axi_RID;
  wire tangerineSOC_0_m00_axi_RLAST;
  wire tangerineSOC_0_m00_axi_RREADY;
  wire [1:0]tangerineSOC_0_m00_axi_RRESP;
  wire tangerineSOC_0_m00_axi_RVALID;
  wire [127:0]tangerineSOC_0_m00_axi_WDATA;
  wire tangerineSOC_0_m00_axi_WLAST;
  wire tangerineSOC_0_m00_axi_WREADY;
  wire [15:0]tangerineSOC_0_m00_axi_WSTRB;
  wire tangerineSOC_0_m00_axi_WVALID;
  wire tangerineSOC_0_sdMciClk;
  wire tangerineSOC_0_sdMciCmd;
  wire tangerineSOC_0_uartTX;
  wire [7:0]tangerineSOC_0_vgaBlue;
  wire tangerineSOC_0_vgaDE;
  wire [7:0]tangerineSOC_0_vgaGreen;
  wire tangerineSOC_0_vgaHS;
  wire [7:0]tangerineSOC_0_vgaRed;
  wire tangerineSOC_0_vgaVS;
  wire uartRxd_1;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;

  assign button0_1 = button0;
  assign button1_1 = button1;
  assign ddr3_addr[13:0] = tangerineMIGWrapper_0_ddr3_addr;
  assign ddr3_ba[2:0] = tangerineMIGWrapper_0_ddr3_ba;
  assign ddr3_cas_n = tangerineMIGWrapper_0_ddr3_cas_n;
  assign ddr3_ck_n[0] = tangerineMIGWrapper_0_ddr3_ck_n;
  assign ddr3_ck_p[0] = tangerineMIGWrapper_0_ddr3_ck_p;
  assign ddr3_cke[0] = tangerineMIGWrapper_0_ddr3_cke;
  assign ddr3_dm[1:0] = tangerineMIGWrapper_0_ddr3_dm;
  assign ddr3_odt[0] = tangerineMIGWrapper_0_ddr3_odt;
  assign ddr3_ras_n = tangerineMIGWrapper_0_ddr3_ras_n;
  assign ddr3_reset_n = tangerineMIGWrapper_0_ddr3_reset_n;
  assign ddr3_we_n = tangerineMIGWrapper_0_ddr3_we_n;
  assign hdmiClkN = hdmiOut_0_hdmiClkN;
  assign hdmiClkP = hdmiOut_0_hdmiClkP;
  assign hdmiDN[2:0] = hdmiOut_0_hdmiDN;
  assign hdmiDP[2:0] = hdmiOut_0_hdmiDP;
  assign i2sBClk = tangerineSOC_0_i2sBClk;
  assign i2sDOut = tangerineSOC_0_i2sDOut;
  assign i2sLRCk = tangerineSOC_0_i2sLRCk;
  assign i2sSClk = tangerineSOC_0_i2sSClk;
  assign led0[0] = xlslice_1_Dout;
  assign led1[0] = xlslice_0_Dout;
  assign sdMciClk = tangerineSOC_0_sdMciClk;
  assign sdMciCmd = tangerineSOC_0_sdMciCmd;
  assign sysClk50_1 = sysClk50;
  assign uartRxd_1 = uartRxd;
  assign uartTxd = tangerineSOC_0_uartTX;
  tangerineA7_100_clk_wiz_0_0 clk_wiz_0
       (.clk320(clk_wiz_0_clk320),
        .clk320ps(clk_wiz_0_clk320ps),
        .clk64(clk_wiz_0_clk25),
        .clk_in1(sysClk50_1),
        .locked(clk_wiz_0_locked),
        .resetn(button0_1));
  tangerineA7_100_clk_wiz_1_0 clk_wiz_1
       (.clk200(clk_wiz_1_clk200),
        .clk_in1(sysClk50_1),
        .locked(clk_wiz_1_locked),
        .resetn(button0_1));
  tangerineA7_100_clk_wiz_2_0 clk_wiz_2
       (.clk162_5(clk_wiz_2_clk162_5),
        .clk40_625(clk_wiz_2_clk40_625),
        .clk_in1(tangerineMIGWrapper_0_ui_clk),
        .locked(Net9),
        .resetn(tangerineMIGWrapper_0_mmcm_locked));
  tangerineA7_100_hdmiOut_0_0 hdmiOut_0
       (.hdmiClkN(hdmiOut_0_hdmiClkN),
        .hdmiClkP(hdmiOut_0_hdmiClkP),
        .hdmiDN(hdmiOut_0_hdmiDN),
        .hdmiDP(hdmiOut_0_hdmiDP),
        .pixelClk(clk_wiz_0_clk25),
        .pixelClkx5(clk_wiz_0_clk320),
        .pixelClkx5Ps(clk_wiz_0_clk320ps),
        .resetn(clk_wiz_0_locked),
        .vgaBlue(tangerineSOC_0_vgaBlue),
        .vgaDE(tangerineSOC_0_vgaDE),
        .vgaGreen(tangerineSOC_0_vgaGreen),
        .vgaHS(tangerineSOC_0_vgaHS),
        .vgaRed(tangerineSOC_0_vgaRed),
        .vgaVS(tangerineSOC_0_vgaVS));
  tangerineA7_100_tangerineMIGWrapper_0_0 tangerineMIGWrapper_0
       (.app_ref_req(Net1),
        .app_sr_req(Net1),
        .app_zq_req(Net1),
        .aresetn(clk_wiz_1_locked),
        .ddr3_addr(tangerineMIGWrapper_0_ddr3_addr),
        .ddr3_ba(tangerineMIGWrapper_0_ddr3_ba),
        .ddr3_cas_n(tangerineMIGWrapper_0_ddr3_cas_n),
        .ddr3_ck_n(tangerineMIGWrapper_0_ddr3_ck_n),
        .ddr3_ck_p(tangerineMIGWrapper_0_ddr3_ck_p),
        .ddr3_cke(tangerineMIGWrapper_0_ddr3_cke),
        .ddr3_dm(tangerineMIGWrapper_0_ddr3_dm),
        .ddr3_dq(ddr3_dq[15:0]),
        .ddr3_dqs_n(ddr3_dqs_n[1:0]),
        .ddr3_dqs_p(ddr3_dqs_p[1:0]),
        .ddr3_odt(tangerineMIGWrapper_0_ddr3_odt),
        .ddr3_ras_n(tangerineMIGWrapper_0_ddr3_ras_n),
        .ddr3_reset_n(tangerineMIGWrapper_0_ddr3_reset_n),
        .ddr3_we_n(tangerineMIGWrapper_0_ddr3_we_n),
        .mmcm_locked(tangerineMIGWrapper_0_mmcm_locked),
        .s_axi_araddr(tangerineSOC_0_m00_axi_ARADDR[27:0]),
        .s_axi_arburst(tangerineSOC_0_m00_axi_ARBURST),
        .s_axi_arcache(tangerineSOC_0_m00_axi_ARCACHE),
        .s_axi_arid(tangerineSOC_0_m00_axi_ARID),
        .s_axi_arlen(tangerineSOC_0_m00_axi_ARLEN),
        .s_axi_arlock(tangerineSOC_0_m00_axi_ARLOCK),
        .s_axi_arprot(tangerineSOC_0_m00_axi_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(tangerineSOC_0_m00_axi_ARREADY),
        .s_axi_arsize(tangerineSOC_0_m00_axi_ARSIZE),
        .s_axi_arvalid(tangerineSOC_0_m00_axi_ARVALID),
        .s_axi_awaddr(tangerineSOC_0_m00_axi_AWADDR[27:0]),
        .s_axi_awburst(tangerineSOC_0_m00_axi_AWBURST),
        .s_axi_awcache(tangerineSOC_0_m00_axi_AWCACHE),
        .s_axi_awid(tangerineSOC_0_m00_axi_AWID),
        .s_axi_awlen(tangerineSOC_0_m00_axi_AWLEN),
        .s_axi_awlock(tangerineSOC_0_m00_axi_AWLOCK),
        .s_axi_awprot(tangerineSOC_0_m00_axi_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(tangerineSOC_0_m00_axi_AWREADY),
        .s_axi_awsize(tangerineSOC_0_m00_axi_AWSIZE),
        .s_axi_awvalid(tangerineSOC_0_m00_axi_AWVALID),
        .s_axi_bready(tangerineSOC_0_m00_axi_BREADY),
        .s_axi_bresp(tangerineSOC_0_m00_axi_BRESP),
        .s_axi_bvalid(tangerineSOC_0_m00_axi_BVALID),
        .s_axi_rdata(tangerineSOC_0_m00_axi_RDATA),
        .s_axi_rid(tangerineSOC_0_m00_axi_RID),
        .s_axi_rlast(tangerineSOC_0_m00_axi_RLAST),
        .s_axi_rready(tangerineSOC_0_m00_axi_RREADY),
        .s_axi_rresp(tangerineSOC_0_m00_axi_RRESP),
        .s_axi_rvalid(tangerineSOC_0_m00_axi_RVALID),
        .s_axi_wdata(tangerineSOC_0_m00_axi_WDATA),
        .s_axi_wlast(tangerineSOC_0_m00_axi_WLAST),
        .s_axi_wready(tangerineSOC_0_m00_axi_WREADY),
        .s_axi_wstrb(tangerineSOC_0_m00_axi_WSTRB),
        .s_axi_wvalid(tangerineSOC_0_m00_axi_WVALID),
        .sys_clk_i(clk_wiz_1_clk200),
        .sys_rst(clk_wiz_1_locked),
        .ui_clk(tangerineMIGWrapper_0_ui_clk));
  tangerineA7_100_tangerineSOC_0_0 tangerineSOC_0
       (.buttons(button1_1),
        .i2sBClk(tangerineSOC_0_i2sBClk),
        .i2sDOut(tangerineSOC_0_i2sDOut),
        .i2sLRCk(tangerineSOC_0_i2sLRCk),
        .i2sSClk(tangerineSOC_0_i2sSClk),
        .leds(tangerineSOC_0_leds),
        .m00_axi_aclk(tangerineMIGWrapper_0_ui_clk),
        .m00_axi_araddr(tangerineSOC_0_m00_axi_ARADDR),
        .m00_axi_arburst(tangerineSOC_0_m00_axi_ARBURST),
        .m00_axi_arcache(tangerineSOC_0_m00_axi_ARCACHE),
        .m00_axi_aresetn(Net9),
        .m00_axi_arid(tangerineSOC_0_m00_axi_ARID),
        .m00_axi_arlen(tangerineSOC_0_m00_axi_ARLEN),
        .m00_axi_arlock(tangerineSOC_0_m00_axi_ARLOCK),
        .m00_axi_arprot(tangerineSOC_0_m00_axi_ARPROT),
        .m00_axi_arready(tangerineSOC_0_m00_axi_ARREADY),
        .m00_axi_arsize(tangerineSOC_0_m00_axi_ARSIZE),
        .m00_axi_arvalid(tangerineSOC_0_m00_axi_ARVALID),
        .m00_axi_awaddr(tangerineSOC_0_m00_axi_AWADDR),
        .m00_axi_awburst(tangerineSOC_0_m00_axi_AWBURST),
        .m00_axi_awcache(tangerineSOC_0_m00_axi_AWCACHE),
        .m00_axi_awid(tangerineSOC_0_m00_axi_AWID),
        .m00_axi_awlen(tangerineSOC_0_m00_axi_AWLEN),
        .m00_axi_awlock(tangerineSOC_0_m00_axi_AWLOCK),
        .m00_axi_awprot(tangerineSOC_0_m00_axi_AWPROT),
        .m00_axi_awready(tangerineSOC_0_m00_axi_AWREADY),
        .m00_axi_awsize(tangerineSOC_0_m00_axi_AWSIZE),
        .m00_axi_awvalid(tangerineSOC_0_m00_axi_AWVALID),
        .m00_axi_bready(tangerineSOC_0_m00_axi_BREADY),
        .m00_axi_bresp(tangerineSOC_0_m00_axi_BRESP),
        .m00_axi_bvalid(tangerineSOC_0_m00_axi_BVALID),
        .m00_axi_rdata(tangerineSOC_0_m00_axi_RDATA),
        .m00_axi_rid(tangerineSOC_0_m00_axi_RID),
        .m00_axi_rlast(tangerineSOC_0_m00_axi_RLAST),
        .m00_axi_rready(tangerineSOC_0_m00_axi_RREADY),
        .m00_axi_rresp(tangerineSOC_0_m00_axi_RRESP),
        .m00_axi_rvalid(tangerineSOC_0_m00_axi_RVALID),
        .m00_axi_wdata(tangerineSOC_0_m00_axi_WDATA),
        .m00_axi_wlast(tangerineSOC_0_m00_axi_WLAST),
        .m00_axi_wready(tangerineSOC_0_m00_axi_WREADY),
        .m00_axi_wstrb(tangerineSOC_0_m00_axi_WSTRB),
        .m00_axi_wvalid(tangerineSOC_0_m00_axi_WVALID),
        .mainClock(clk_wiz_2_clk162_5),
        .mainClockD2(clk_wiz_2_clk40_625),
        .pixelClock(clk_wiz_0_clk25),
        .ps2aClock(ps2aClock),
        .ps2aData(ps2aData),
        .ps2bClock(ps2bClock),
        .ps2bData(ps2bData),
        .resetn(Net9),
        .sdMciClk(tangerineSOC_0_sdMciClk),
        .sdMciCmd(tangerineSOC_0_sdMciCmd),
        .sdMciDat(sdMciDat[3:0]),
        .uartRX(uartRxd_1),
        .uartTX(tangerineSOC_0_uartTX),
        .vgaBlue(tangerineSOC_0_vgaBlue),
        .vgaDE(tangerineSOC_0_vgaDE),
        .vgaGreen(tangerineSOC_0_vgaGreen),
        .vgaHS(tangerineSOC_0_vgaHS),
        .vgaRed(tangerineSOC_0_vgaRed),
        .vgaVS(tangerineSOC_0_vgaVS));
  tangerineA7_100_xlconstant_0_0 xlconstant_0
       (.dout(Net1));
  tangerineA7_100_xlslice_0_0 xlslice_0
       (.Din(tangerineSOC_0_leds),
        .Dout(xlslice_0_Dout));
  tangerineA7_100_xlslice_1_0 xlslice_1
       (.Din(tangerineSOC_0_leds),
        .Dout(xlslice_1_Dout));
endmodule
