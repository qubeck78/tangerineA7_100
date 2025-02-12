--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Tue Feb 11 10:44:19 2025
--Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
--Command     : generate_target tangerineA7_100.bd
--Design      : tangerineA7_100
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tangerineA7_100 is
  port (
    button0 : in STD_LOGIC;
    button1 : in STD_LOGIC;
    hdmiClkN : out STD_LOGIC;
    hdmiClkP : out STD_LOGIC;
    hdmiDN : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmiDP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdMciClk : out STD_LOGIC;
    sdMciCmd : out STD_LOGIC;
    sdMciDat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    sysClk50 : in STD_LOGIC;
    uartRxd : in STD_LOGIC;
    uartTxd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of tangerineA7_100 : entity is "tangerineA7_100,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=tangerineA7_100,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of tangerineA7_100 : entity is "tangerineA7_100.hwdef";
end tangerineA7_100;

architecture STRUCTURE of tangerineA7_100 is
  component tangerineA7_100_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk64 : out STD_LOGIC;
    clk320 : out STD_LOGIC;
    clk320ps : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component tangerineA7_100_clk_wiz_0_0;
  component tangerineA7_100_hdmiOut_0_0 is
  port (
    resetn : in STD_LOGIC;
    pixelClk : in STD_LOGIC;
    pixelClkx5 : in STD_LOGIC;
    pixelClkx5Ps : in STD_LOGIC;
    vgaRed : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaGreen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaBlue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaHS : in STD_LOGIC;
    vgaVS : in STD_LOGIC;
    vgaDE : in STD_LOGIC;
    hdmiClkP : out STD_LOGIC;
    hdmiClkN : out STD_LOGIC;
    hdmiDP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmiDN : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component tangerineA7_100_hdmiOut_0_0;
  component tangerineA7_100_clk_wiz_1_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk100 : out STD_LOGIC;
    clk100ps : out STD_LOGIC;
    clk50 : out STD_LOGIC;
    clk200 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component tangerineA7_100_clk_wiz_1_0;
  component tangerineA7_100_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component tangerineA7_100_xlslice_0_0;
  component tangerineA7_100_tangerineSOC_0_0 is
  port (
    resetn : in STD_LOGIC;
    mainClock : in STD_LOGIC;
    mainClockPs : in STD_LOGIC;
    mainClockD2 : in STD_LOGIC;
    pixelClock : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vgaRed : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaGreen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaBlue : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaHS : out STD_LOGIC;
    vgaVS : out STD_LOGIC;
    vgaDE : out STD_LOGIC;
    uartTX : out STD_LOGIC;
    uartRX : in STD_LOGIC;
    sdMciDat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    sdMciCmd : out STD_LOGIC;
    sdMciClk : out STD_LOGIC;
    buttons : in STD_LOGIC_VECTOR ( 0 to 0 );
    leds : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component tangerineA7_100_tangerineSOC_0_0;
  signal Net : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal button0_1 : STD_LOGIC;
  signal button1_1 : STD_LOGIC;
  signal clk_wiz_0_clk25 : STD_LOGIC;
  signal clk_wiz_0_clk320 : STD_LOGIC;
  signal clk_wiz_0_clk320ps : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clk_wiz_1_clk100 : STD_LOGIC;
  signal clk_wiz_1_clk100ps : STD_LOGIC;
  signal clk_wiz_1_clk50 : STD_LOGIC;
  signal clk_wiz_1_locked : STD_LOGIC;
  signal hdmiOut_0_hdmiClkN : STD_LOGIC;
  signal hdmiOut_0_hdmiClkP : STD_LOGIC;
  signal hdmiOut_0_hdmiDN : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmiOut_0_hdmiDP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sysClk50_1 : STD_LOGIC;
  signal tangerineSOC_0_leds : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tangerineSOC_0_sdMciClk : STD_LOGIC;
  signal tangerineSOC_0_sdMciCmd : STD_LOGIC;
  signal tangerineSOC_0_uartTX : STD_LOGIC;
  signal tangerineSOC_0_vgaBlue : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tangerineSOC_0_vgaDE : STD_LOGIC;
  signal tangerineSOC_0_vgaGreen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tangerineSOC_0_vgaHS : STD_LOGIC;
  signal tangerineSOC_0_vgaRed : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tangerineSOC_0_vgaVS : STD_LOGIC;
  signal uartRxd_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_clk_wiz_1_clk200_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_tangerineSOC_0_m00_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_tangerineSOC_0_m00_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of button0 : signal is "xilinx.com:signal:reset:1.0 RST.BUTTON0 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of button0 : signal is "XIL_INTERFACENAME RST.BUTTON0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sysClk50 : signal is "xilinx.com:signal:clock:1.0 CLK.SYSCLK50 CLK";
  attribute X_INTERFACE_PARAMETER of sysClk50 : signal is "XIL_INTERFACENAME CLK.SYSCLK50, CLK_DOMAIN tangerineA7_100_sysClk50, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  button0_1 <= button0;
  button1_1 <= button1;
  hdmiClkN <= hdmiOut_0_hdmiClkN;
  hdmiClkP <= hdmiOut_0_hdmiClkP;
  hdmiDN(2 downto 0) <= hdmiOut_0_hdmiDN(2 downto 0);
  hdmiDP(2 downto 0) <= hdmiOut_0_hdmiDP(2 downto 0);
  led0 <= clk_wiz_0_locked;
  led1(0) <= xlslice_0_Dout(0);
  sdMciClk <= tangerineSOC_0_sdMciClk;
  sdMciCmd <= tangerineSOC_0_sdMciCmd;
  sysClk50_1 <= sysClk50;
  uartRxd_1 <= uartRxd;
  uartTxd <= tangerineSOC_0_uartTX;
clk_wiz_0: component tangerineA7_100_clk_wiz_0_0
     port map (
      clk320 => clk_wiz_0_clk320,
      clk320ps => clk_wiz_0_clk320ps,
      clk64 => clk_wiz_0_clk25,
      clk_in1 => sysClk50_1,
      locked => clk_wiz_0_locked,
      resetn => button0_1
    );
clk_wiz_1: component tangerineA7_100_clk_wiz_1_0
     port map (
      clk100 => clk_wiz_1_clk100,
      clk100ps => clk_wiz_1_clk100ps,
      clk200 => NLW_clk_wiz_1_clk200_UNCONNECTED,
      clk50 => clk_wiz_1_clk50,
      clk_in1 => sysClk50_1,
      locked => clk_wiz_1_locked,
      resetn => button0_1
    );
hdmiOut_0: component tangerineA7_100_hdmiOut_0_0
     port map (
      hdmiClkN => hdmiOut_0_hdmiClkN,
      hdmiClkP => hdmiOut_0_hdmiClkP,
      hdmiDN(2 downto 0) => hdmiOut_0_hdmiDN(2 downto 0),
      hdmiDP(2 downto 0) => hdmiOut_0_hdmiDP(2 downto 0),
      pixelClk => clk_wiz_0_clk25,
      pixelClkx5 => clk_wiz_0_clk320,
      pixelClkx5Ps => clk_wiz_0_clk320ps,
      resetn => clk_wiz_0_locked,
      vgaBlue(7 downto 0) => tangerineSOC_0_vgaBlue(7 downto 0),
      vgaDE => tangerineSOC_0_vgaDE,
      vgaGreen(7 downto 0) => tangerineSOC_0_vgaGreen(7 downto 0),
      vgaHS => tangerineSOC_0_vgaHS,
      vgaRed(7 downto 0) => tangerineSOC_0_vgaRed(7 downto 0),
      vgaVS => tangerineSOC_0_vgaVS
    );
tangerineSOC_0: component tangerineA7_100_tangerineSOC_0_0
     port map (
      buttons(0) => button1_1,
      leds(1 downto 0) => tangerineSOC_0_leds(1 downto 0),
      m00_axi_aclk => clk_wiz_1_clk100,
      m00_axi_araddr(31 downto 0) => NLW_tangerineSOC_0_m00_axi_araddr_UNCONNECTED(31 downto 0),
      m00_axi_arburst(1 downto 0) => NLW_tangerineSOC_0_m00_axi_arburst_UNCONNECTED(1 downto 0),
      m00_axi_arcache(3 downto 0) => NLW_tangerineSOC_0_m00_axi_arcache_UNCONNECTED(3 downto 0),
      m00_axi_aresetn => clk_wiz_1_locked,
      m00_axi_arid(3 downto 0) => NLW_tangerineSOC_0_m00_axi_arid_UNCONNECTED(3 downto 0),
      m00_axi_arlen(7 downto 0) => NLW_tangerineSOC_0_m00_axi_arlen_UNCONNECTED(7 downto 0),
      m00_axi_arlock => NLW_tangerineSOC_0_m00_axi_arlock_UNCONNECTED,
      m00_axi_arprot(2 downto 0) => NLW_tangerineSOC_0_m00_axi_arprot_UNCONNECTED(2 downto 0),
      m00_axi_arready => '0',
      m00_axi_arsize(2 downto 0) => NLW_tangerineSOC_0_m00_axi_arsize_UNCONNECTED(2 downto 0),
      m00_axi_arvalid => NLW_tangerineSOC_0_m00_axi_arvalid_UNCONNECTED,
      m00_axi_awaddr(31 downto 0) => NLW_tangerineSOC_0_m00_axi_awaddr_UNCONNECTED(31 downto 0),
      m00_axi_awburst(1 downto 0) => NLW_tangerineSOC_0_m00_axi_awburst_UNCONNECTED(1 downto 0),
      m00_axi_awcache(3 downto 0) => NLW_tangerineSOC_0_m00_axi_awcache_UNCONNECTED(3 downto 0),
      m00_axi_awid(3 downto 0) => NLW_tangerineSOC_0_m00_axi_awid_UNCONNECTED(3 downto 0),
      m00_axi_awlen(7 downto 0) => NLW_tangerineSOC_0_m00_axi_awlen_UNCONNECTED(7 downto 0),
      m00_axi_awlock => NLW_tangerineSOC_0_m00_axi_awlock_UNCONNECTED,
      m00_axi_awprot(2 downto 0) => NLW_tangerineSOC_0_m00_axi_awprot_UNCONNECTED(2 downto 0),
      m00_axi_awready => '0',
      m00_axi_awsize(2 downto 0) => NLW_tangerineSOC_0_m00_axi_awsize_UNCONNECTED(2 downto 0),
      m00_axi_awvalid => NLW_tangerineSOC_0_m00_axi_awvalid_UNCONNECTED,
      m00_axi_bready => NLW_tangerineSOC_0_m00_axi_bready_UNCONNECTED,
      m00_axi_bresp(1 downto 0) => B"00",
      m00_axi_bvalid => '0',
      m00_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m00_axi_rid(3 downto 0) => B"0000",
      m00_axi_rlast => '0',
      m00_axi_rready => NLW_tangerineSOC_0_m00_axi_rready_UNCONNECTED,
      m00_axi_rresp(1 downto 0) => B"00",
      m00_axi_rvalid => '0',
      m00_axi_wdata(31 downto 0) => NLW_tangerineSOC_0_m00_axi_wdata_UNCONNECTED(31 downto 0),
      m00_axi_wlast => NLW_tangerineSOC_0_m00_axi_wlast_UNCONNECTED,
      m00_axi_wready => '0',
      m00_axi_wstrb(3 downto 0) => NLW_tangerineSOC_0_m00_axi_wstrb_UNCONNECTED(3 downto 0),
      m00_axi_wvalid => NLW_tangerineSOC_0_m00_axi_wvalid_UNCONNECTED,
      mainClock => clk_wiz_1_clk100,
      mainClockD2 => clk_wiz_1_clk50,
      mainClockPs => clk_wiz_1_clk100ps,
      pixelClock => clk_wiz_0_clk25,
      resetn => clk_wiz_1_locked,
      sdMciClk => tangerineSOC_0_sdMciClk,
      sdMciCmd => tangerineSOC_0_sdMciCmd,
      sdMciDat(3 downto 0) => sdMciDat(3 downto 0),
      uartRX => uartRxd_1,
      uartTX => tangerineSOC_0_uartTX,
      vgaBlue(7 downto 0) => tangerineSOC_0_vgaBlue(7 downto 0),
      vgaDE => tangerineSOC_0_vgaDE,
      vgaGreen(7 downto 0) => tangerineSOC_0_vgaGreen(7 downto 0),
      vgaHS => tangerineSOC_0_vgaHS,
      vgaRed(7 downto 0) => tangerineSOC_0_vgaRed(7 downto 0),
      vgaVS => tangerineSOC_0_vgaVS
    );
xlslice_0: component tangerineA7_100_xlslice_0_0
     port map (
      Din(1 downto 0) => tangerineSOC_0_leds(1 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
