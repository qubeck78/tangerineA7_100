-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Feb 11 11:34:27 2025
-- Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tangerineA7_100_hdmiOut_0_0_stub.vhdl
-- Design      : tangerineA7_100_hdmiOut_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "resetn,pixelClk,pixelClkx5,pixelClkx5Ps,vgaRed[7:0],vgaGreen[7:0],vgaBlue[7:0],vgaHS,vgaVS,vgaDE,hdmiClkP,hdmiClkN,hdmiDP[2:0],hdmiDN[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdmiOut,Vivado 2023.1";
begin
end;
