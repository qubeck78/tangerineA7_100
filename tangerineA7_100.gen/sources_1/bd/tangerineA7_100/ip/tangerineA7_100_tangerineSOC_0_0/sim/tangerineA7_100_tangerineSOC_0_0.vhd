-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:tangerineSOC:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tangerineA7_100_tangerineSOC_0_0 IS
  PORT (
    resetn : IN STD_LOGIC;
    mainClock : IN STD_LOGIC;
    mainClockPs : IN STD_LOGIC;
    mainClockD2 : IN STD_LOGIC;
    pixelClock : IN STD_LOGIC;
    m00_axi_aclk : IN STD_LOGIC;
    m00_axi_aresetn : IN STD_LOGIC;
    m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awvalid : OUT STD_LOGIC;
    m00_axi_awready : IN STD_LOGIC;
    m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_wvalid : OUT STD_LOGIC;
    m00_axi_wready : IN STD_LOGIC;
    m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_bvalid : IN STD_LOGIC;
    m00_axi_bready : OUT STD_LOGIC;
    m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arvalid : OUT STD_LOGIC;
    m00_axi_arready : IN STD_LOGIC;
    m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_rvalid : IN STD_LOGIC;
    m00_axi_rready : OUT STD_LOGIC;
    m00_axi_arid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_arlock : OUT STD_LOGIC;
    m00_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_rid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_rlast : IN STD_LOGIC;
    m00_axi_awid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_awlock : OUT STD_LOGIC;
    m00_axi_wlast : OUT STD_LOGIC;
    m00_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    vgaRed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vgaGreen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vgaBlue : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    vgaHS : OUT STD_LOGIC;
    vgaVS : OUT STD_LOGIC;
    vgaDE : OUT STD_LOGIC;
    uartTX : OUT STD_LOGIC;
    uartRX : IN STD_LOGIC;
    sdMciDat : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    sdMciCmd : OUT STD_LOGIC;
    sdMciClk : OUT STD_LOGIC;
    buttons : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    leds : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END tangerineA7_100_tangerineSOC_0_0;

ARCHITECTURE tangerineA7_100_tangerineSOC_0_0_arch OF tangerineA7_100_tangerineSOC_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF tangerineA7_100_tangerineSOC_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT tangerineSOC IS
    PORT (
      resetn : IN STD_LOGIC;
      mainClock : IN STD_LOGIC;
      mainClockPs : IN STD_LOGIC;
      mainClockD2 : IN STD_LOGIC;
      pixelClock : IN STD_LOGIC;
      m00_axi_aclk : IN STD_LOGIC;
      m00_axi_aresetn : IN STD_LOGIC;
      m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awvalid : OUT STD_LOGIC;
      m00_axi_awready : IN STD_LOGIC;
      m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_wvalid : OUT STD_LOGIC;
      m00_axi_wready : IN STD_LOGIC;
      m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_bvalid : IN STD_LOGIC;
      m00_axi_bready : OUT STD_LOGIC;
      m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arvalid : OUT STD_LOGIC;
      m00_axi_arready : IN STD_LOGIC;
      m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_rvalid : IN STD_LOGIC;
      m00_axi_rready : OUT STD_LOGIC;
      m00_axi_arid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_arlock : OUT STD_LOGIC;
      m00_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_rid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_rlast : IN STD_LOGIC;
      m00_axi_awid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_awlock : OUT STD_LOGIC;
      m00_axi_wlast : OUT STD_LOGIC;
      m00_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      vgaRed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      vgaGreen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      vgaBlue : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      vgaHS : OUT STD_LOGIC;
      vgaVS : OUT STD_LOGIC;
      vgaDE : OUT STD_LOGIC;
      uartTX : OUT STD_LOGIC;
      uartRX : IN STD_LOGIC;
      sdMciDat : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      sdMciCmd : OUT STD_LOGIC;
      sdMciClk : OUT STD_LOGIC;
      buttons : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      leds : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT tangerineSOC;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME m00_axi_aclk, ASSOCIATED_BUSIF m00_axi, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME m00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m00_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME m00_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1" & 
", RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi RID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m00_axi WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 resetn RST";
BEGIN
  U0 : tangerineSOC
    PORT MAP (
      resetn => resetn,
      mainClock => mainClock,
      mainClockPs => mainClockPs,
      mainClockD2 => mainClockD2,
      pixelClock => pixelClock,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_awaddr => m00_axi_awaddr,
      m00_axi_awprot => m00_axi_awprot,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_awready => m00_axi_awready,
      m00_axi_wdata => m00_axi_wdata,
      m00_axi_wstrb => m00_axi_wstrb,
      m00_axi_wvalid => m00_axi_wvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_bresp => m00_axi_bresp,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_araddr => m00_axi_araddr,
      m00_axi_arprot => m00_axi_arprot,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_arready => m00_axi_arready,
      m00_axi_rdata => m00_axi_rdata,
      m00_axi_rresp => m00_axi_rresp,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_rready => m00_axi_rready,
      m00_axi_arid => m00_axi_arid,
      m00_axi_arlen => m00_axi_arlen,
      m00_axi_arsize => m00_axi_arsize,
      m00_axi_arburst => m00_axi_arburst,
      m00_axi_arlock => m00_axi_arlock,
      m00_axi_arcache => m00_axi_arcache,
      m00_axi_rid => m00_axi_rid,
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_awid => m00_axi_awid,
      m00_axi_awlen => m00_axi_awlen,
      m00_axi_awsize => m00_axi_awsize,
      m00_axi_awburst => m00_axi_awburst,
      m00_axi_awlock => m00_axi_awlock,
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_awcache => m00_axi_awcache,
      vgaRed => vgaRed,
      vgaGreen => vgaGreen,
      vgaBlue => vgaBlue,
      vgaHS => vgaHS,
      vgaVS => vgaVS,
      vgaDE => vgaDE,
      uartTX => uartTX,
      uartRX => uartRX,
      sdMciDat => sdMciDat,
      sdMciCmd => sdMciCmd,
      sdMciClk => sdMciClk,
      buttons => buttons,
      leds => leds
    );
END tangerineA7_100_tangerineSOC_0_0_arch;
