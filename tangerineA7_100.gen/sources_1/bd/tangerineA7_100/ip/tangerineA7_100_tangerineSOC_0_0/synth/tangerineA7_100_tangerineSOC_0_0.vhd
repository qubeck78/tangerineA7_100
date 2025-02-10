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
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF tangerineA7_100_tangerineSOC_0_0_arch: ARCHITECTURE IS "tangerineSOC,Vivado 2023.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF tangerineA7_100_tangerineSOC_0_0_arch : ARCHITECTURE IS "tangerineA7_100_tangerineSOC_0_0,tangerineSOC,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF tangerineA7_100_tangerineSOC_0_0_arch: ARCHITECTURE IS "tangerineA7_100_tangerineSOC_0_0,tangerineSOC,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=tangerineSOC,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF tangerineA7_100_tangerineSOC_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
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
