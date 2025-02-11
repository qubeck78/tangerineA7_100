--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Tue Feb 11 09:28:40 2025
--Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
--Command     : generate_target tangerineA7_100_wrapper.bd
--Design      : tangerineA7_100_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tangerineA7_100_wrapper is
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
end tangerineA7_100_wrapper;

architecture STRUCTURE of tangerineA7_100_wrapper is
  component tangerineA7_100 is
  port (
    sysClk50 : in STD_LOGIC;
    uartTxd : out STD_LOGIC;
    uartRxd : in STD_LOGIC;
    button0 : in STD_LOGIC;
    button1 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmiClkP : out STD_LOGIC;
    hdmiClkN : out STD_LOGIC;
    hdmiDP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmiDN : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sdMciDat : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    sdMciCmd : out STD_LOGIC;
    sdMciClk : out STD_LOGIC
  );
  end component tangerineA7_100;
begin
tangerineA7_100_i: component tangerineA7_100
     port map (
      button0 => button0,
      button1 => button1,
      hdmiClkN => hdmiClkN,
      hdmiClkP => hdmiClkP,
      hdmiDN(2 downto 0) => hdmiDN(2 downto 0),
      hdmiDP(2 downto 0) => hdmiDP(2 downto 0),
      led0 => led0,
      led1(0) => led1(0),
      sdMciClk => sdMciClk,
      sdMciCmd => sdMciCmd,
      sdMciDat(3 downto 0) => sdMciDat(3 downto 0),
      sysClk50 => sysClk50,
      uartRxd => uartRxd,
      uartTxd => uartTxd
    );
end STRUCTURE;
