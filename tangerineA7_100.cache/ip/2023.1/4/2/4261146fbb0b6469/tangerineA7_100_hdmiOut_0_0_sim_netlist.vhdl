-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Feb 11 11:34:27 2025
-- Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tangerineA7_100_hdmiOut_0_0_sim_netlist.vhdl
-- Design      : tangerineA7_100_hdmiOut_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vgaBlue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaDE : in STD_LOGIC;
    vgaHS : in STD_LOGIC;
    blank : in STD_LOGIC;
    pixelClk : in STD_LOGIC;
    vgaVS : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder is
  signal \dc_bias[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_8__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_6__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_7__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_8__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_10__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_11__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_12__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_13__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_14__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_15__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_16__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_17_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_18__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_19__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_20__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_21__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_22__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_23__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_24__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_25__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_26__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_27__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_28__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_6_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_8__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_9__1_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal \encoded[0]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \encoded[1]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \encoded[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_3_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_4_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_5_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_6_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_7_n_0\ : STD_LOGIC;
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_2__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_3__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_4__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_5__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_6__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_5__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_7__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_8__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_2__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_6__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_7__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_10__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_12__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_13__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_14__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_18__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_19__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_20__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_24__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_25__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_26__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_28__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_8__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \encoded[3]_i_2__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \encoded[4]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \encoded[6]_i_2__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \encoded[6]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \encoded[7]_i_3__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \encoded[7]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \encoded[8]_i_1\ : label is "soft_lutpair11";
begin
\dc_bias[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"960096FF96FF9600"
    )
        port map (
      I0 => \dc_bias[3]_i_4__0_n_0\,
      I1 => \dc_bias[0]_i_2__1_n_0\,
      I2 => \dc_bias[0]_i_3__1_n_0\,
      I3 => \dc_bias[3]_i_6_n_0\,
      I4 => \dc_bias_reg_n_0_[0]\,
      I5 => \dc_bias[0]_i_4__0_n_0\,
      O => \dc_bias[0]_i_1__1_n_0\
    );
\dc_bias[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \encoded[3]_i_2__1_n_0\,
      I1 => vgaBlue(5),
      I2 => vgaBlue(0),
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaBlue(7),
      O => \dc_bias[0]_i_2__1_n_0\
    );
\dc_bias[0]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vgaBlue(2),
      I1 => \encoded[7]_i_2__0_n_0\,
      O => \dc_bias[0]_i_3__1_n_0\
    );
\dc_bias[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dc_bias[0]_i_5__1_n_0\,
      I1 => \dc_bias[0]_i_6__1_n_0\,
      I2 => vgaBlue(1),
      I3 => vgaBlue(3),
      O => \dc_bias[0]_i_4__0_n_0\
    );
\dc_bias[0]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => vgaBlue(6),
      I1 => vgaBlue(5),
      I2 => \encoded[6]_i_2__0_n_0\,
      I3 => vgaBlue(7),
      I4 => \encoded[7]_i_2__0_n_0\,
      O => \dc_bias[0]_i_5__1_n_0\
    );
\dc_bias[0]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vgaBlue(6),
      I1 => \encoded[7]_i_2__0_n_0\,
      I2 => \encoded[6]_i_2__0_n_0\,
      O => \dc_bias[0]_i_6__1_n_0\
    );
\dc_bias[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0F00F99999999"
    )
        port map (
      I0 => \dc_bias[1]_i_4__1_n_0\,
      I1 => \dc_bias[1]_i_5__0_n_0\,
      I2 => \dc_bias[1]_i_6__0_n_0\,
      I3 => \dc_bias[1]_i_7__0_n_0\,
      I4 => \dc_bias[3]_i_12__1_n_0\,
      I5 => \encoded[7]_i_2__0_n_0\,
      O => \dc_bias[1]_i_2__1_n_0\
    );
\dc_bias[1]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999990FF0F00F"
    )
        port map (
      I0 => \dc_bias[1]_i_5__0_n_0\,
      I1 => \dc_bias[1]_i_8__1_n_0\,
      I2 => \dc_bias[2]_i_6__1_n_0\,
      I3 => \dc_bias[3]_i_18__1_n_0\,
      I4 => \dc_bias[3]_i_21__1_n_0\,
      I5 => \dc_bias[3]_i_4__0_n_0\,
      O => \dc_bias[1]_i_3__1_n_0\
    );
\dc_bias[1]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBEBEEB"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => vgaBlue(3),
      I2 => vgaBlue(1),
      I3 => \dc_bias[0]_i_6__1_n_0\,
      I4 => \dc_bias[0]_i_5__1_n_0\,
      O => \dc_bias[1]_i_4__1_n_0\
    );
\dc_bias[1]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[1]\,
      I1 => \dc_bias[3]_i_23__1_n_0\,
      O => \dc_bias[1]_i_5__0_n_0\
    );
\dc_bias[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAACA33AA33ACAAC"
    )
        port map (
      I0 => \dc_bias[0]_i_6__1_n_0\,
      I1 => vgaBlue(0),
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias[0]_i_5__1_n_0\,
      I4 => vgaBlue(3),
      I5 => vgaBlue(1),
      O => \dc_bias[1]_i_6__0_n_0\
    );
\dc_bias[1]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \dc_bias[0]_i_5__1_n_0\,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => vgaBlue(0),
      I3 => \dc_bias[3]_i_13__1_n_0\,
      I4 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[1]_i_7__0_n_0\
    );
\dc_bias[1]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DB"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias[0]_i_4__0_n_0\,
      I2 => \encoded[7]_i_2__0_n_0\,
      O => \dc_bias[1]_i_8__1_n_0\
    );
\dc_bias[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C3FFFF55C30000"
    )
        port map (
      I0 => \dc_bias[2]_i_2__1_n_0\,
      I1 => \dc_bias[2]_i_3__1_n_0\,
      I2 => \dc_bias[2]_i_4__1_n_0\,
      I3 => \dc_bias[3]_i_4__0_n_0\,
      I4 => \dc_bias[3]_i_6_n_0\,
      I5 => \dc_bias[2]_i_5__1_n_0\,
      O => \dc_bias[2]_i_1__1_n_0\
    );
\dc_bias[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44B4BB4"
    )
        port map (
      I0 => \dc_bias[3]_i_23__1_n_0\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias[3]_i_11__1_n_0\,
      I4 => \dc_bias[3]_i_24__0_n_0\,
      O => \dc_bias[2]_i_2__1_n_0\
    );
\dc_bias[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1557571501151501"
    )
        port map (
      I0 => \dc_bias[2]_i_6__1_n_0\,
      I1 => \dc_bias[0]_i_3__1_n_0\,
      I2 => vgaBlue(7),
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaBlue(0),
      I5 => \dc_bias[2]_i_7__1_n_0\,
      O => \dc_bias[2]_i_3__1_n_0\
    );
\dc_bias[2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45545115BAABAEEA"
    )
        port map (
      I0 => \dc_bias[3]_i_20__1_n_0\,
      I1 => vgaBlue(2),
      I2 => vgaBlue(0),
      I3 => vgaBlue(1),
      I4 => \encoded[7]_i_2__0_n_0\,
      I5 => \dc_bias[3]_i_17_n_0\,
      O => \dc_bias[2]_i_4__1_n_0\
    );
\dc_bias[2]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF066660FF09999"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias[3]_i_11__1_n_0\,
      I2 => \dc_bias[2]_i_8__0_n_0\,
      I3 => \dc_bias[3]_i_9__1_n_0\,
      I4 => \encoded[7]_i_2__0_n_0\,
      I5 => \dc_bias[3]_i_10__1_n_0\,
      O => \dc_bias[2]_i_5__1_n_0\
    );
\dc_bias[2]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4128BED7"
    )
        port map (
      I0 => vgaBlue(2),
      I1 => vgaBlue(0),
      I2 => vgaBlue(1),
      I3 => \encoded[7]_i_2__0_n_0\,
      I4 => \dc_bias[3]_i_20__1_n_0\,
      O => \dc_bias[2]_i_6__1_n_0\
    );
\dc_bias[2]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => vgaBlue(5),
      I1 => vgaBlue(1),
      I2 => vgaBlue(0),
      I3 => vgaBlue(2),
      I4 => vgaBlue(3),
      O => \dc_bias[2]_i_7__1_n_0\
    );
\dc_bias[2]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A6A665A6656565"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias[3]_i_13__1_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias[0]_i_5__1_n_0\,
      I4 => \dc_bias_reg_n_0_[0]\,
      I5 => vgaBlue(0),
      O => \dc_bias[2]_i_8__0_n_0\
    );
\dc_bias[3]_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0FB"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias[0]_i_4__0_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias[3]_i_23__1_n_0\,
      O => \dc_bias[3]_i_10__1_n_0\
    );
\dc_bias[3]_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2444444D444D4DDD"
    )
        port map (
      I0 => \dc_bias[3]_i_12__1_n_0\,
      I1 => \dc_bias[3]_i_13__1_n_0\,
      I2 => \dc_bias[0]_i_6__1_n_0\,
      I3 => \dc_bias[0]_i_5__1_n_0\,
      I4 => vgaBlue(0),
      I5 => \dc_bias[3]_i_25__0_n_0\,
      O => \dc_bias[3]_i_11__1_n_0\
    );
\dc_bias[3]_i_12__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"693CC369"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => vgaBlue(1),
      I2 => vgaBlue(0),
      I3 => vgaBlue(2),
      I4 => vgaBlue(3),
      O => \dc_bias[3]_i_12__1_n_0\
    );
\dc_bias[3]_i_13__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A96A"
    )
        port map (
      I0 => \encoded[6]_i_2__0_n_0\,
      I1 => vgaBlue(5),
      I2 => \encoded[7]_i_2__0_n_0\,
      I3 => vgaBlue(6),
      O => \dc_bias[3]_i_13__1_n_0\
    );
\dc_bias[3]_i_14__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060960"
    )
        port map (
      I0 => \dc_bias[0]_i_5__1_n_0\,
      I1 => \dc_bias[0]_i_6__1_n_0\,
      I2 => vgaBlue(1),
      I3 => vgaBlue(0),
      I4 => vgaBlue(3),
      O => \dc_bias[3]_i_14__1_n_0\
    );
\dc_bias[3]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35C5535CC5355C53"
    )
        port map (
      I0 => vgaBlue(0),
      I1 => \encoded[7]_i_2__0_n_0\,
      I2 => vgaBlue(7),
      I3 => \encoded[6]_i_2__0_n_0\,
      I4 => vgaBlue(5),
      I5 => vgaBlue(6),
      O => \dc_bias[3]_i_15__0_n_0\
    );
\dc_bias[3]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555556566A6AAA"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \dc_bias[3]_i_26__0_n_0\,
      I3 => \dc_bias[3]_i_27__0_n_0\,
      I4 => \dc_bias[3]_i_28__0_n_0\,
      I5 => \dc_bias_reg_n_0_[2]\,
      O => \dc_bias[3]_i_16__1_n_0\
    );
\dc_bias[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8818181177E7E7E"
    )
        port map (
      I0 => \dc_bias[3]_i_28__0_n_0\,
      I1 => \dc_bias[3]_i_27__0_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaBlue(0),
      I5 => \dc_bias_reg_n_0_[2]\,
      O => \dc_bias[3]_i_17_n_0\
    );
\dc_bias[3]_i_18__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"066F6F06"
    )
        port map (
      I0 => \encoded[3]_i_2__1_n_0\,
      I1 => vgaBlue(5),
      I2 => vgaBlue(7),
      I3 => vgaBlue(0),
      I4 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[3]_i_18__1_n_0\
    );
\dc_bias[3]_i_19__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB7D"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => vgaBlue(1),
      I2 => vgaBlue(0),
      I3 => vgaBlue(2),
      O => \dc_bias[3]_i_19__1_n_0\
    );
\dc_bias[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00EEEEFFFFEEEE"
    )
        port map (
      I0 => \dc_bias[3]_i_2__1_n_0\,
      I1 => \dc_bias[3]_i_3__0_n_0\,
      I2 => \dc_bias[3]_i_4__0_n_0\,
      I3 => \dc_bias[3]_i_5__1_n_0\,
      I4 => \dc_bias[3]_i_6_n_0\,
      I5 => \dc_bias[3]_i_7__1_n_0\,
      O => \dc_bias[3]_i_1__0_n_0\
    );
\dc_bias[3]_i_20__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => \dc_bias[3]_i_27__0_n_0\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => vgaBlue(0),
      I4 => \dc_bias[3]_i_28__0_n_0\,
      O => \dc_bias[3]_i_20__1_n_0\
    );
\dc_bias[3]_i_21__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => vgaBlue(2),
      I2 => \dc_bias[0]_i_2__1_n_0\,
      O => \dc_bias[3]_i_21__1_n_0\
    );
\dc_bias[3]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E997FFFE7FFFE997"
    )
        port map (
      I0 => vgaBlue(0),
      I1 => \dc_bias[0]_i_5__1_n_0\,
      I2 => \dc_bias[0]_i_6__1_n_0\,
      I3 => \dc_bias[3]_i_25__0_n_0\,
      I4 => \dc_bias[3]_i_13__1_n_0\,
      I5 => \dc_bias[3]_i_12__1_n_0\,
      O => \dc_bias[3]_i_22__0_n_0\
    );
\dc_bias[3]_i_23__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81177EE87EE88117"
    )
        port map (
      I0 => \dc_bias[3]_i_25__0_n_0\,
      I1 => vgaBlue(0),
      I2 => \dc_bias[0]_i_5__1_n_0\,
      I3 => \dc_bias[0]_i_6__1_n_0\,
      I4 => \dc_bias[3]_i_13__1_n_0\,
      I5 => \dc_bias[3]_i_12__1_n_0\,
      O => \dc_bias[3]_i_23__1_n_0\
    );
\dc_bias[3]_i_24__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99F99099"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[1]\,
      I1 => \dc_bias[3]_i_23__1_n_0\,
      I2 => \encoded[7]_i_2__0_n_0\,
      I3 => \dc_bias[0]_i_4__0_n_0\,
      I4 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[3]_i_24__0_n_0\
    );
\dc_bias[3]_i_25__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vgaBlue(3),
      I1 => vgaBlue(0),
      I2 => vgaBlue(1),
      O => \dc_bias[3]_i_25__0_n_0\
    );
\dc_bias[3]_i_26__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vgaBlue(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[3]_i_26__0_n_0\
    );
\dc_bias[3]_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => vgaBlue(4),
      I1 => vgaBlue(5),
      I2 => \encoded[7]_i_2__0_n_0\,
      I3 => vgaBlue(3),
      I4 => vgaBlue(2),
      I5 => \encoded[1]_i_2_n_0\,
      O => \dc_bias[3]_i_27__0_n_0\
    );
\dc_bias[3]_i_28__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EE8E88E"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => vgaBlue(7),
      I2 => \encoded[6]_i_2__0_n_0\,
      I3 => vgaBlue(5),
      I4 => vgaBlue(6),
      O => \dc_bias[3]_i_28__0_n_0\
    );
\dc_bias[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88288288"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => p_1_in,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias[3]_i_8__1_n_0\,
      I4 => \dc_bias[3]_i_9__1_n_0\,
      O => \dc_bias[3]_i_2__1_n_0\
    );
\dc_bias[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10514504"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => \dc_bias[3]_i_10__1_n_0\,
      I2 => \dc_bias[3]_i_11__1_n_0\,
      I3 => \dc_bias_reg_n_0_[2]\,
      I4 => \dc_bias[3]_i_4__0_n_0\,
      O => \dc_bias[3]_i_3__0_n_0\
    );
\dc_bias[3]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65A65565"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias[3]_i_12__1_n_0\,
      I2 => \dc_bias[3]_i_13__1_n_0\,
      I3 => \dc_bias[3]_i_14__1_n_0\,
      I4 => \dc_bias[3]_i_15__0_n_0\,
      O => \dc_bias[3]_i_4__0_n_0\
    );
\dc_bias[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9995A99995559995"
    )
        port map (
      I0 => \dc_bias[3]_i_16__1_n_0\,
      I1 => \dc_bias[3]_i_17_n_0\,
      I2 => \dc_bias[3]_i_18__1_n_0\,
      I3 => \dc_bias[3]_i_19__1_n_0\,
      I4 => \dc_bias[3]_i_20__1_n_0\,
      I5 => \dc_bias[3]_i_21__1_n_0\,
      O => \dc_bias[3]_i_5__1_n_0\
    );
\dc_bias[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \dc_bias[3]_i_22__0_n_0\,
      I1 => p_1_in,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias_reg_n_0_[2]\,
      I4 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[3]_i_6_n_0\
    );
\dc_bias[3]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4F4F0FBFFFFF4F"
    )
        port map (
      I0 => \dc_bias[3]_i_23__1_n_0\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \dc_bias[3]_i_4__0_n_0\,
      I3 => \dc_bias[3]_i_24__0_n_0\,
      I4 => \dc_bias_reg_n_0_[2]\,
      I5 => \dc_bias[3]_i_11__1_n_0\,
      O => \dc_bias[3]_i_7__1_n_0\
    );
\dc_bias[3]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17FF0017"
    )
        port map (
      I0 => vgaBlue(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \dc_bias[0]_i_5__1_n_0\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias[3]_i_13__1_n_0\,
      O => \dc_bias[3]_i_8__1_n_0\
    );
\dc_bias[3]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \dc_bias[3]_i_12__1_n_0\,
      I1 => \dc_bias[1]_i_7__0_n_0\,
      I2 => \dc_bias[1]_i_6__0_n_0\,
      O => \dc_bias[3]_i_9__1_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[0]_i_1__1_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => blank
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias_reg[1]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => blank
    );
\dc_bias_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dc_bias[1]_i_2__1_n_0\,
      I1 => \dc_bias[1]_i_3__1_n_0\,
      O => \dc_bias_reg[1]_i_1_n_0\,
      S => \dc_bias[3]_i_6_n_0\
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[2]_i_1__1_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => blank
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[3]_i_1__0_n_0\,
      Q => p_1_in,
      R => blank
    );
\encoded[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"784BFFFF784B0000"
    )
        port map (
      I0 => \dc_bias[3]_i_4__0_n_0\,
      I1 => \dc_bias[3]_i_6_n_0\,
      I2 => vgaBlue(0),
      I3 => \encoded[7]_i_2__0_n_0\,
      I4 => vgaDE,
      I5 => vgaHS,
      O => \encoded[0]_i_1_n_0\
    );
\encoded[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F90FFFF6F900000"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => \dc_bias[3]_i_4__0_n_0\,
      I2 => \dc_bias[3]_i_6_n_0\,
      I3 => \encoded[1]_i_2_n_0\,
      I4 => vgaDE,
      I5 => vgaHS,
      O => \encoded[1]_i_1__1_n_0\
    );
\encoded[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vgaBlue(1),
      I1 => vgaBlue(0),
      O => \encoded[1]_i_2_n_0\
    );
\encoded[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"966900009669FFFF"
    )
        port map (
      I0 => vgaBlue(1),
      I1 => vgaBlue(0),
      I2 => vgaBlue(2),
      I3 => \encoded[6]_i_3_n_0\,
      I4 => vgaDE,
      I5 => vgaHS,
      O => \encoded[2]_i_1__1_n_0\
    );
\encoded[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F90FFFF6F900000"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => \dc_bias[3]_i_4__0_n_0\,
      I2 => \dc_bias[3]_i_6_n_0\,
      I3 => \encoded[3]_i_2__1_n_0\,
      I4 => vgaDE,
      I5 => vgaHS,
      O => \encoded[3]_i_1__0_n_0\
    );
\encoded[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => vgaBlue(3),
      I1 => vgaBlue(2),
      I2 => vgaBlue(0),
      I3 => vgaBlue(1),
      O => \encoded[3]_i_2__1_n_0\
    );
\encoded[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"606F"
    )
        port map (
      I0 => \encoded[6]_i_2__0_n_0\,
      I1 => \encoded[6]_i_3_n_0\,
      I2 => vgaDE,
      I3 => vgaHS,
      O => \encoded[4]_i_1__1_n_0\
    );
\encoded[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F90FFFF6F900000"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => \dc_bias[3]_i_4__0_n_0\,
      I2 => \dc_bias[3]_i_6_n_0\,
      I3 => \encoded[5]_i_2__1_n_0\,
      I4 => vgaDE,
      I5 => vgaHS,
      O => \encoded[5]_i_1__1_n_0\
    );
\encoded[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => vgaBlue(5),
      I1 => vgaBlue(3),
      I2 => vgaBlue(2),
      I3 => vgaBlue(0),
      I4 => vgaBlue(1),
      I5 => vgaBlue(4),
      O => \encoded[5]_i_2__1_n_0\
    );
\encoded[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"699600006996FFFF"
    )
        port map (
      I0 => \encoded[6]_i_2__0_n_0\,
      I1 => vgaBlue(5),
      I2 => vgaBlue(6),
      I3 => \encoded[6]_i_3_n_0\,
      I4 => vgaDE,
      I5 => vgaHS,
      O => \encoded[6]_i_1__1_n_0\
    );
\encoded[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => vgaBlue(4),
      I1 => vgaBlue(1),
      I2 => vgaBlue(0),
      I3 => vgaBlue(2),
      I4 => vgaBlue(3),
      O => \encoded[6]_i_2__0_n_0\
    );
\encoded[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \dc_bias[3]_i_4__0_n_0\,
      I1 => \dc_bias[3]_i_6_n_0\,
      I2 => \encoded[7]_i_2__0_n_0\,
      O => \encoded[6]_i_3_n_0\
    );
\encoded[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F90FFFF6F900000"
    )
        port map (
      I0 => \encoded[7]_i_2__0_n_0\,
      I1 => \dc_bias[3]_i_4__0_n_0\,
      I2 => \dc_bias[3]_i_6_n_0\,
      I3 => \encoded[7]_i_3__0_n_0\,
      I4 => vgaDE,
      I5 => vgaHS,
      O => \encoded[7]_i_1_n_0\
    );
\encoded[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DD50445D55D0445"
    )
        port map (
      I0 => \encoded[7]_i_4_n_0\,
      I1 => \encoded[7]_i_5_n_0\,
      I2 => vgaBlue(7),
      I3 => \encoded[7]_i_6_n_0\,
      I4 => \encoded[7]_i_7_n_0\,
      I5 => vgaBlue(0),
      O => \encoded[7]_i_2__0_n_0\
    );
\encoded[7]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => vgaBlue(7),
      I1 => \encoded[6]_i_2__0_n_0\,
      I2 => vgaBlue(5),
      I3 => vgaBlue(6),
      O => \encoded[7]_i_3__0_n_0\
    );
\encoded[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => vgaBlue(1),
      I1 => vgaBlue(3),
      I2 => vgaBlue(2),
      I3 => vgaBlue(4),
      I4 => vgaBlue(6),
      I5 => vgaBlue(5),
      O => \encoded[7]_i_4_n_0\
    );
\encoded[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vgaBlue(1),
      I1 => vgaBlue(3),
      I2 => vgaBlue(2),
      O => \encoded[7]_i_5_n_0\
    );
\encoded[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vgaBlue(4),
      I1 => vgaBlue(6),
      I2 => vgaBlue(5),
      O => \encoded[7]_i_6_n_0\
    );
\encoded[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001700171717"
    )
        port map (
      I0 => vgaBlue(1),
      I1 => vgaBlue(3),
      I2 => vgaBlue(2),
      I3 => vgaBlue(4),
      I4 => vgaBlue(6),
      I5 => vgaBlue(5),
      O => \encoded[7]_i_7_n_0\
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => vgaHS,
      I1 => vgaDE,
      I2 => \encoded[7]_i_2__0_n_0\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAC300C3FFC3"
    )
        port map (
      I0 => \dc_bias[3]_i_4__0_n_0\,
      I1 => vgaVS,
      I2 => vgaHS,
      I3 => vgaDE,
      I4 => \encoded[7]_i_2__0_n_0\,
      I5 => \dc_bias[3]_i_6_n_0\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[0]_i_1_n_0\,
      Q => D(0),
      R => '0'
    );
\encoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[1]_i_1__1_n_0\,
      Q => D(1),
      R => '0'
    );
\encoded_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[2]_i_1__1_n_0\,
      Q => D(2),
      R => '0'
    );
\encoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[3]_i_1__0_n_0\,
      Q => D(3),
      R => '0'
    );
\encoded_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[4]_i_1__1_n_0\,
      Q => D(4),
      R => '0'
    );
\encoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[5]_i_1__1_n_0\,
      Q => D(5),
      R => '0'
    );
\encoded_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[6]_i_1__1_n_0\,
      Q => D(6),
      R => '0'
    );
\encoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[7]_i_1_n_0\,
      Q => D(7),
      R => '0'
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => D(8),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => D(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vgaGreen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaDE : in STD_LOGIC;
    blank : in STD_LOGIC;
    pixelClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 : entity is "TDMS_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 is
  signal \dc_bias[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_5_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_7_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_6_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_7_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_8__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_10__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_11__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_12_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_13_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_14_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_15_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_16_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_17_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_18_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_19_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_20_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_21_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_22_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_8__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_9__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_12__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_13__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_14__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_15__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_16__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_17__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_18__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_19__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_20__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_21__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_22_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_23__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal \encoded[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \encoded[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \encoded[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_6__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_8__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_10__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_11__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_12\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_13\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_15\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_17\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_18\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_22\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_8__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_9__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_13__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_14__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_17__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_19__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_20__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_22\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_23__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_5__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \encoded[0]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \encoded[1]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \encoded[3]_i_2__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \encoded[4]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \encoded[5]_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \encoded[6]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \encoded[6]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \encoded[7]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \encoded[7]_i_2__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \encoded[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \encoded[9]_i_1\ : label is "soft_lutpair15";
begin
\dc_bias[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"906F6F90"
    )
        port map (
      I0 => \dc_bias[2]_i_5__0_n_0\,
      I1 => \dc_bias[0]_i_2__0_n_0\,
      I2 => \dc_bias[3]_i_2__0_n_0\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => \dc_bias[0]_i_3_n_0\,
      O => \dc_bias[0]_i_1__0_n_0\
    );
\dc_bias[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FF00FFA0FFFA"
    )
        port map (
      I0 => \dc_bias[0]_i_4_n_0\,
      I1 => vgaGreen(0),
      I2 => vgaGreen(7),
      I3 => \dc_bias[0]_i_5_n_0\,
      I4 => \dc_bias[0]_i_6__0_n_0\,
      I5 => \dc_bias[0]_i_7_n_0\,
      O => \dc_bias[0]_i_2__0_n_0\
    );
\dc_bias[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => vgaGreen(1),
      I1 => vgaGreen(3),
      I2 => \dc_bias[0]_i_8_n_0\,
      I3 => \encoded[7]_i_2__1_n_0\,
      O => \dc_bias[0]_i_3_n_0\
    );
\dc_bias[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vgaGreen(4),
      I1 => vgaGreen(6),
      I2 => vgaGreen(5),
      O => \dc_bias[0]_i_4_n_0\
    );
\dc_bias[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => vgaGreen(2),
      I1 => vgaGreen(3),
      I2 => vgaGreen(1),
      I3 => vgaGreen(5),
      I4 => vgaGreen(6),
      I5 => vgaGreen(4),
      O => \dc_bias[0]_i_5_n_0\
    );
\dc_bias[0]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vgaGreen(2),
      I1 => vgaGreen(3),
      I2 => vgaGreen(1),
      O => \dc_bias[0]_i_6__0_n_0\
    );
\dc_bias[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001700171717"
    )
        port map (
      I0 => vgaGreen(5),
      I1 => vgaGreen(6),
      I2 => vgaGreen(4),
      I3 => vgaGreen(2),
      I4 => vgaGreen(3),
      I5 => vgaGreen(1),
      O => \dc_bias[0]_i_7_n_0\
    );
\dc_bias[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dc_bias[0]_i_2__0_n_0\,
      I1 => \encoded[5]_i_2__0_n_0\,
      I2 => vgaGreen(6),
      O => \dc_bias[0]_i_8_n_0\
    );
\dc_bias[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dc_bias[1]_i_2__0_n_0\,
      I1 => \dc_bias[2]_i_5__0_n_0\,
      I2 => \dc_bias[1]_i_3__0_n_0\,
      I3 => \dc_bias[3]_i_2__0_n_0\,
      I4 => \dc_bias[1]_i_4__0_n_0\,
      O => \dc_bias[1]_i_1__0_n_0\
    );
\dc_bias[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A96A95A995A95695"
    )
        port map (
      I0 => \dc_bias[2]_i_12_n_0\,
      I1 => \dc_bias[2]_i_8__1_n_0\,
      I2 => \dc_bias[2]_i_9__0_n_0\,
      I3 => \dc_bias[2]_i_11__0_n_0\,
      I4 => vgaGreen(7),
      I5 => \dc_bias[2]_i_10__0_n_0\,
      O => \dc_bias[1]_i_2__0_n_0\
    );
\dc_bias[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96C3C369"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \dc_bias[3]_i_6__1_n_0\,
      I3 => \dc_bias[0]_i_3_n_0\,
      I4 => \dc_bias[0]_i_2__0_n_0\,
      O => \dc_bias[1]_i_3__0_n_0\
    );
\dc_bias[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60606F606F6F60"
    )
        port map (
      I0 => \dc_bias[1]_i_5__1_n_0\,
      I1 => \dc_bias[1]_i_6_n_0\,
      I2 => \dc_bias[0]_i_2__0_n_0\,
      I3 => \dc_bias[1]_i_7_n_0\,
      I4 => \dc_bias[1]_i_8__0_n_0\,
      I5 => \dc_bias[2]_i_17_n_0\,
      O => \dc_bias[1]_i_4__0_n_0\
    );
\dc_bias[1]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEBEBBE"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \encoded[7]_i_2__1_n_0\,
      I2 => \dc_bias[0]_i_8_n_0\,
      I3 => vgaGreen(3),
      I4 => vgaGreen(1),
      O => \dc_bias[1]_i_5__1_n_0\
    );
\dc_bias[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696696669669969"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[1]\,
      I1 => \dc_bias[3]_i_12__0_n_0\,
      I2 => vgaGreen(0),
      I3 => \encoded[7]_i_2__1_n_0\,
      I4 => \dc_bias[0]_i_8_n_0\,
      I5 => \dc_bias[3]_i_13__0_n_0\,
      O => \dc_bias[1]_i_6_n_0\
    );
\dc_bias[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B2EE2B8E2B88B2E"
    )
        port map (
      I0 => \dc_bias[0]_i_8_n_0\,
      I1 => vgaGreen(1),
      I2 => vgaGreen(0),
      I3 => vgaGreen(3),
      I4 => \encoded[7]_i_2__1_n_0\,
      I5 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[1]_i_7_n_0\
    );
\dc_bias[1]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => vgaGreen(0),
      I2 => \encoded[7]_i_2__1_n_0\,
      I3 => \dc_bias[2]_i_18_n_0\,
      I4 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[1]_i_8__0_n_0\
    );
\dc_bias[2]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => vgaGreen(5),
      I1 => vgaGreen(2),
      I2 => vgaGreen(3),
      I3 => vgaGreen(1),
      I4 => vgaGreen(0),
      O => \dc_bias[2]_i_10__0_n_0\
    );
\dc_bias[2]_i_11__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vgaGreen(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[2]_i_11__0_n_0\
    );
\dc_bias[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \dc_bias[2]_i_14_n_0\,
      I1 => \dc_bias[2]_i_13_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaGreen(0),
      O => \dc_bias[2]_i_12_n_0\
    );
\dc_bias[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DD4D44D"
    )
        port map (
      I0 => \dc_bias[0]_i_2__0_n_0\,
      I1 => vgaGreen(7),
      I2 => \encoded[5]_i_2__0_n_0\,
      I3 => vgaGreen(5),
      I4 => vgaGreen(6),
      O => \dc_bias[2]_i_13_n_0\
    );
\dc_bias[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996C33C3CC36996"
    )
        port map (
      I0 => \dc_bias[0]_i_2__0_n_0\,
      I1 => \encoded[3]_i_2__0_n_0\,
      I2 => vgaGreen(3),
      I3 => vgaGreen(2),
      I4 => vgaGreen(4),
      I5 => vgaGreen(5),
      O => \dc_bias[2]_i_14_n_0\
    );
\dc_bias[2]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60090690"
    )
        port map (
      I0 => \dc_bias[0]_i_8_n_0\,
      I1 => \encoded[7]_i_2__1_n_0\,
      I2 => vgaGreen(1),
      I3 => vgaGreen(0),
      I4 => vgaGreen(3),
      O => \dc_bias[2]_i_15_n_0\
    );
\dc_bias[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FFFF6969000069"
    )
        port map (
      I0 => \dc_bias[0]_i_2__0_n_0\,
      I1 => \encoded[5]_i_2__0_n_0\,
      I2 => vgaGreen(6),
      I3 => vgaGreen(7),
      I4 => vgaGreen(5),
      I5 => vgaGreen(0),
      O => \dc_bias[2]_i_16_n_0\
    );
\dc_bias[2]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4D22D"
    )
        port map (
      I0 => vgaGreen(2),
      I1 => vgaGreen(3),
      I2 => vgaGreen(0),
      I3 => vgaGreen(1),
      I4 => \dc_bias[0]_i_2__0_n_0\,
      O => \dc_bias[2]_i_17_n_0\
    );
\dc_bias[2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => \dc_bias[0]_i_2__0_n_0\,
      I1 => vgaGreen(5),
      I2 => vgaGreen(6),
      I3 => \encoded[5]_i_2__0_n_0\,
      O => \dc_bias[2]_i_18_n_0\
    );
\dc_bias[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEEFF88CF88CCEEF"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \dc_bias[3]_i_13__0_n_0\,
      I3 => \dc_bias[2]_i_22_n_0\,
      I4 => \dc_bias[2]_i_16_n_0\,
      I5 => \dc_bias[3]_i_12__0_n_0\,
      O => \dc_bias[2]_i_19_n_0\
    );
\dc_bias[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C355FFFFC3550000"
    )
        port map (
      I0 => \dc_bias[2]_i_2__0_n_0\,
      I1 => \dc_bias[2]_i_3__0_n_0\,
      I2 => \dc_bias[2]_i_4__0_n_0\,
      I3 => \dc_bias[2]_i_5__0_n_0\,
      I4 => \dc_bias[3]_i_2__0_n_0\,
      I5 => \dc_bias[2]_i_6__0_n_0\,
      O => \dc_bias[2]_i_1__0_n_0\
    );
\dc_bias[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"599A9A9A5959599A"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias[2]_i_18_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaGreen(0),
      I5 => \encoded[7]_i_2__1_n_0\,
      O => \dc_bias[2]_i_20_n_0\
    );
\dc_bias[2]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \dc_bias[1]_i_7_n_0\,
      I1 => \dc_bias[1]_i_8__0_n_0\,
      I2 => \dc_bias[2]_i_17_n_0\,
      O => \dc_bias[2]_i_21_n_0\
    );
\dc_bias[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vgaGreen(5),
      I1 => vgaGreen(7),
      I2 => vgaGreen(0),
      O => \dc_bias[2]_i_22_n_0\
    );
\dc_bias[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD02BF40BF4002FD"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias[0]_i_3_n_0\,
      I2 => \dc_bias[0]_i_2__0_n_0\,
      I3 => \dc_bias[2]_i_7__0_n_0\,
      I4 => \dc_bias[3]_i_6__1_n_0\,
      I5 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[2]_i_2__0_n_0\
    );
\dc_bias[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E880FEE800018000"
    )
        port map (
      I0 => \dc_bias[2]_i_8__1_n_0\,
      I1 => \dc_bias[2]_i_9__0_n_0\,
      I2 => \dc_bias[2]_i_10__0_n_0\,
      I3 => vgaGreen(7),
      I4 => \dc_bias[2]_i_11__0_n_0\,
      I5 => \dc_bias[2]_i_12_n_0\,
      O => \dc_bias[2]_i_3__0_n_0\
    );
\dc_bias[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8818181177E7E7E"
    )
        port map (
      I0 => \dc_bias[2]_i_13_n_0\,
      I1 => \dc_bias[2]_i_14_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaGreen(0),
      I5 => \dc_bias_reg_n_0_[2]\,
      O => \dc_bias[2]_i_4__0_n_0\
    );
\dc_bias[2]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95A9A9AA"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias[2]_i_15_n_0\,
      I2 => \dc_bias[2]_i_16_n_0\,
      I3 => \dc_bias[2]_i_17_n_0\,
      I4 => \dc_bias[2]_i_18_n_0\,
      O => \dc_bias[2]_i_5__0_n_0\
    );
\dc_bias[2]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \dc_bias[2]_i_19_n_0\,
      I1 => \dc_bias[2]_i_7__0_n_0\,
      I2 => \dc_bias[0]_i_2__0_n_0\,
      I3 => \dc_bias[2]_i_20_n_0\,
      I4 => \dc_bias[2]_i_21_n_0\,
      O => \dc_bias[2]_i_6__0_n_0\
    );
\dc_bias[2]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias[3]_i_7__0_n_0\,
      O => \dc_bias[2]_i_7__0_n_0\
    );
\dc_bias[2]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vgaGreen(2),
      I1 => vgaGreen(0),
      I2 => vgaGreen(1),
      O => \dc_bias[2]_i_8__1_n_0\
    );
\dc_bias[2]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vgaGreen(0),
      I1 => vgaGreen(1),
      I2 => \dc_bias[0]_i_2__0_n_0\,
      O => \dc_bias[2]_i_9__0_n_0\
    );
\dc_bias[3]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA9A9956AA96AA9"
    )
        port map (
      I0 => \dc_bias[2]_i_5__0_n_0\,
      I1 => \dc_bias[3]_i_15__1_n_0\,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias[3]_i_7__0_n_0\,
      I4 => \dc_bias[3]_i_16__0_n_0\,
      I5 => \dc_bias[3]_i_17__1_n_0\,
      O => \dc_bias[3]_i_10__0_n_0\
    );
\dc_bias[3]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DDF0004B220FFFB"
    )
        port map (
      I0 => \dc_bias[3]_i_18__0_n_0\,
      I1 => \dc_bias[3]_i_19__0_n_0\,
      I2 => \dc_bias[3]_i_20__0_n_0\,
      I3 => \dc_bias[2]_i_12_n_0\,
      I4 => \dc_bias[2]_i_4__0_n_0\,
      I5 => \dc_bias[3]_i_21__0_n_0\,
      O => \dc_bias[3]_i_11__0_n_0\
    );
\dc_bias[3]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96C33C96693CC369"
    )
        port map (
      I0 => \dc_bias[0]_i_2__0_n_0\,
      I1 => vgaGreen(1),
      I2 => vgaGreen(0),
      I3 => vgaGreen(3),
      I4 => vgaGreen(2),
      I5 => \dc_bias[2]_i_18_n_0\,
      O => \dc_bias[3]_i_12__0_n_0\
    );
\dc_bias[3]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vgaGreen(3),
      I1 => vgaGreen(0),
      I2 => vgaGreen(1),
      O => \dc_bias[3]_i_13__0_n_0\
    );
\dc_bias[3]_i_14__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BFF002B"
    )
        port map (
      I0 => \encoded[7]_i_2__1_n_0\,
      I1 => vgaGreen(0),
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias[2]_i_18_n_0\,
      O => \dc_bias[3]_i_14__0_n_0\
    );
\dc_bias[3]_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A69A9A5900000000"
    )
        port map (
      I0 => \dc_bias[3]_i_12__0_n_0\,
      I1 => vgaGreen(0),
      I2 => \encoded[7]_i_2__1_n_0\,
      I3 => \dc_bias[0]_i_8_n_0\,
      I4 => \dc_bias[3]_i_13__0_n_0\,
      I5 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[3]_i_15__1_n_0\
    );
\dc_bias[3]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669000096699669"
    )
        port map (
      I0 => \dc_bias[2]_i_15_n_0\,
      I1 => \dc_bias[2]_i_16_n_0\,
      I2 => \dc_bias[3]_i_12__0_n_0\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias[1]_i_5__1_n_0\,
      I5 => \dc_bias[0]_i_2__0_n_0\,
      O => \dc_bias[3]_i_16__0_n_0\
    );
\dc_bias[3]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias[0]_i_3_n_0\,
      I2 => \dc_bias[0]_i_2__0_n_0\,
      O => \dc_bias[3]_i_17__1_n_0\
    );
\dc_bias[3]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F66F6FF66FF6F66F"
    )
        port map (
      I0 => \dc_bias[2]_i_9__0_n_0\,
      I1 => \dc_bias[2]_i_8__1_n_0\,
      I2 => vgaGreen(7),
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaGreen(0),
      I5 => \dc_bias[2]_i_10__0_n_0\,
      O => \dc_bias[3]_i_18__0_n_0\
    );
\dc_bias[3]_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"066F6F06"
    )
        port map (
      I0 => vgaGreen(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => vgaGreen(7),
      I3 => \dc_bias[3]_i_22_n_0\,
      I4 => vgaGreen(5),
      O => \dc_bias[3]_i_19__0_n_0\
    );
\dc_bias[3]_i_20__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1881"
    )
        port map (
      I0 => vgaGreen(2),
      I1 => \dc_bias[0]_i_2__0_n_0\,
      I2 => vgaGreen(1),
      I3 => vgaGreen(0),
      O => \dc_bias[3]_i_20__0_n_0\
    );
\dc_bias[3]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555556566A6AAA"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias[3]_i_23__0_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias[2]_i_14_n_0\,
      I4 => \dc_bias[2]_i_13_n_0\,
      I5 => \dc_bias_reg_n_0_[2]\,
      O => \dc_bias[3]_i_21__0_n_0\
    );
\dc_bias[3]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => vgaGreen(0),
      I1 => vgaGreen(1),
      I2 => vgaGreen(3),
      I3 => vgaGreen(2),
      O => \dc_bias[3]_i_22_n_0\
    );
\dc_bias[3]_i_23__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vgaGreen(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[3]_i_23__0_n_0\
    );
\dc_bias[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => \dc_bias[3]_i_5__0_n_0\,
      I1 => \dc_bias[0]_i_3_n_0\,
      I2 => \dc_bias[3]_i_6__1_n_0\,
      I3 => \dc_bias[3]_i_7__0_n_0\,
      O => \dc_bias[3]_i_2__0_n_0\
    );
\dc_bias[3]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => p_1_in,
      O => \dc_bias[3]_i_5__0_n_0\
    );
\dc_bias[3]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F96F60F606909F09"
    )
        port map (
      I0 => vgaGreen(3),
      I1 => vgaGreen(1),
      I2 => \dc_bias[0]_i_8_n_0\,
      I3 => \encoded[7]_i_2__1_n_0\,
      I4 => vgaGreen(0),
      I5 => \dc_bias[3]_i_12__0_n_0\,
      O => \dc_bias[3]_i_6__1_n_0\
    );
\dc_bias[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77E7717771771171"
    )
        port map (
      I0 => \dc_bias[2]_i_18_n_0\,
      I1 => \dc_bias[2]_i_17_n_0\,
      I2 => vgaGreen(0),
      I3 => \encoded[7]_i_2__1_n_0\,
      I4 => \dc_bias[0]_i_8_n_0\,
      I5 => \dc_bias[3]_i_13__0_n_0\,
      O => \dc_bias[3]_i_7__0_n_0\
    );
\dc_bias[3]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => \dc_bias[2]_i_21_n_0\,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias[3]_i_14__0_n_0\,
      I3 => p_1_in,
      O => \dc_bias[3]_i_8__0_n_0\
    );
\dc_bias[3]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A995A9959595"
    )
        port map (
      I0 => \dc_bias[2]_i_5__0_n_0\,
      I1 => \dc_bias[3]_i_7__0_n_0\,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias[3]_i_6__1_n_0\,
      I4 => \dc_bias_reg_n_0_[1]\,
      I5 => \dc_bias[1]_i_5__1_n_0\,
      O => \dc_bias[3]_i_9__0_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[0]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => blank
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[1]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => blank
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[2]_i_1__0_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => blank
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias_reg[3]_i_1_n_0\,
      Q => p_1_in,
      R => blank
    );
\dc_bias_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dc_bias_reg[3]_i_3_n_0\,
      I1 => \dc_bias_reg[3]_i_4_n_0\,
      O => \dc_bias_reg[3]_i_1_n_0\,
      S => \dc_bias[3]_i_2__0_n_0\
    );
\dc_bias_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dc_bias[3]_i_8__0_n_0\,
      I1 => \dc_bias[3]_i_9__0_n_0\,
      O => \dc_bias_reg[3]_i_3_n_0\,
      S => \dc_bias[0]_i_2__0_n_0\
    );
\dc_bias_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dc_bias[3]_i_10__0_n_0\,
      I1 => \dc_bias[3]_i_11__0_n_0\,
      O => \dc_bias_reg[3]_i_4_n_0\,
      S => \dc_bias[2]_i_5__0_n_0\
    );
\encoded[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A656"
    )
        port map (
      I0 => vgaGreen(0),
      I1 => \dc_bias[0]_i_2__0_n_0\,
      I2 => \dc_bias[3]_i_2__0_n_0\,
      I3 => \dc_bias[2]_i_5__0_n_0\,
      O => \encoded[0]_i_1__1_n_0\
    );
\encoded[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666696"
    )
        port map (
      I0 => vgaGreen(1),
      I1 => vgaGreen(0),
      I2 => \dc_bias[3]_i_2__0_n_0\,
      I3 => \dc_bias[2]_i_5__0_n_0\,
      I4 => \dc_bias[0]_i_2__0_n_0\,
      O => \encoded[1]_i_1__0_n_0\
    );
\encoded[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669696996"
    )
        port map (
      I0 => vgaGreen(1),
      I1 => vgaGreen(0),
      I2 => vgaGreen(2),
      I3 => \dc_bias[0]_i_2__0_n_0\,
      I4 => \dc_bias[3]_i_2__0_n_0\,
      I5 => \dc_bias[2]_i_5__0_n_0\,
      O => \encoded[2]_i_1__0_n_0\
    );
\encoded[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969696966996"
    )
        port map (
      I0 => \encoded[3]_i_2__0_n_0\,
      I1 => vgaGreen(3),
      I2 => vgaGreen(2),
      I3 => \dc_bias[3]_i_2__0_n_0\,
      I4 => \dc_bias[2]_i_5__0_n_0\,
      I5 => \dc_bias[0]_i_2__0_n_0\,
      O => \encoded[3]_i_1_n_0\
    );
\encoded[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vgaGreen(1),
      I1 => vgaGreen(0),
      O => \encoded[3]_i_2__0_n_0\
    );
\encoded[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A9"
    )
        port map (
      I0 => \encoded[5]_i_2__0_n_0\,
      I1 => \dc_bias[0]_i_2__0_n_0\,
      I2 => \dc_bias[3]_i_2__0_n_0\,
      I3 => \dc_bias[2]_i_5__0_n_0\,
      O => \encoded[4]_i_1__0_n_0\
    );
\encoded[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999969"
    )
        port map (
      I0 => \encoded[5]_i_2__0_n_0\,
      I1 => vgaGreen(5),
      I2 => \dc_bias[3]_i_2__0_n_0\,
      I3 => \dc_bias[2]_i_5__0_n_0\,
      I4 => \dc_bias[0]_i_2__0_n_0\,
      O => \encoded[5]_i_1__0_n_0\
    );
\encoded[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => vgaGreen(4),
      I1 => vgaGreen(2),
      I2 => vgaGreen(3),
      I3 => vgaGreen(1),
      I4 => vgaGreen(0),
      O => \encoded[5]_i_2__0_n_0\
    );
\encoded[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DF7F75"
    )
        port map (
      I0 => vgaDE,
      I1 => \dc_bias[2]_i_5__0_n_0\,
      I2 => \dc_bias[3]_i_2__0_n_0\,
      I3 => \dc_bias[0]_i_2__0_n_0\,
      I4 => \encoded[6]_i_2_n_0\,
      O => \encoded[6]_i_1__0_n_0\
    );
\encoded[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vgaGreen(6),
      I1 => vgaGreen(5),
      I2 => \encoded[5]_i_2__0_n_0\,
      O => \encoded[6]_i_2_n_0\
    );
\encoded[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"748B0000"
    )
        port map (
      I0 => \dc_bias[2]_i_5__0_n_0\,
      I1 => \dc_bias[3]_i_2__0_n_0\,
      I2 => \dc_bias[0]_i_2__0_n_0\,
      I3 => \encoded[7]_i_2__1_n_0\,
      I4 => vgaDE,
      O => \encoded[7]_i_1__1_n_0\
    );
\encoded[7]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => vgaGreen(6),
      I1 => vgaGreen(5),
      I2 => \encoded[5]_i_2__0_n_0\,
      I3 => vgaGreen(7),
      I4 => \dc_bias[0]_i_2__0_n_0\,
      O => \encoded[7]_i_2__1_n_0\
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => vgaDE,
      I1 => \dc_bias[0]_i_2__0_n_0\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F4F"
    )
        port map (
      I0 => \dc_bias[2]_i_5__0_n_0\,
      I1 => \dc_bias[3]_i_2__0_n_0\,
      I2 => vgaDE,
      I3 => \dc_bias[0]_i_2__0_n_0\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[0]_i_1__1_n_0\,
      Q => D(0),
      R => blank
    );
\encoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[1]_i_1__0_n_0\,
      Q => D(1),
      R => blank
    );
\encoded_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[2]_i_1__0_n_0\,
      Q => D(2),
      S => blank
    );
\encoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[3]_i_1_n_0\,
      Q => D(3),
      R => blank
    );
\encoded_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[4]_i_1__0_n_0\,
      Q => D(4),
      S => blank
    );
\encoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[5]_i_1__0_n_0\,
      Q => D(5),
      R => blank
    );
\encoded_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[6]_i_1__0_n_0\,
      Q => D(6),
      R => '0'
    );
\encoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[7]_i_1__1_n_0\,
      Q => D(7),
      R => '0'
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => D(8),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => D(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 is
  port (
    blank : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vgaDE : in STD_LOGIC;
    vgaRed : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pixelClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 : entity is "TDMS_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 is
  signal \^blank\ : STD_LOGIC;
  signal \dc_bias[0]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_2_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_6_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_10_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_11_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_2_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_5_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_6__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_7__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_9_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_10_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_11_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_2_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_5_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_6_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_7_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_9_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_10_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_11_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_12_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_13_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_14_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_15_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_16_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_17__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_18_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_19_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_20_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_21_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_22__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_23_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_24_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_25_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_26_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_27_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_28_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_29_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_2_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_30_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_5_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_7_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_9_n_0\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[0]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[1]\ : STD_LOGIC;
  signal \dc_bias_reg_n_0_[2]\ : STD_LOGIC;
  signal \encoded[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[1]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[2]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_3_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_4_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_5_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_6_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_7_n_0\ : STD_LOGIC;
  signal \encoded[4]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_3_n_0\ : STD_LOGIC;
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_3__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_4__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_5\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_6__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_7__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_9\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_7\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_8\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_9\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_17__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_18\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_19\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_20\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_24\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_25\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_26\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_29\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_9\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \encoded[0]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \encoded[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \encoded[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \encoded[3]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \encoded[3]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \encoded[3]_i_5\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \encoded[3]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \encoded[5]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \encoded[5]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \encoded[7]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \encoded[7]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \encoded[7]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \encoded[8]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \encoded[9]_i_1\ : label is "soft_lutpair32";
begin
  blank <= \^blank\;
\dc_bias[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96FF9600960096FF"
    )
        port map (
      I0 => \dc_bias[3]_i_6__0_n_0\,
      I1 => \dc_bias[0]_i_2_n_0\,
      I2 => \dc_bias[0]_i_3__0_n_0\,
      I3 => \dc_bias[3]_i_7_n_0\,
      I4 => \dc_bias_reg_n_0_[0]\,
      I5 => \dc_bias[0]_i_4__1_n_0\,
      O => \dc_bias[0]_i_1_n_0\
    );
\dc_bias[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \encoded[5]_i_2_n_0\,
      I1 => vgaRed(0),
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => vgaRed(7),
      O => \dc_bias[0]_i_2_n_0\
    );
\dc_bias[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vgaRed(2),
      I1 => \encoded[3]_i_3_n_0\,
      O => \dc_bias[0]_i_3__0_n_0\
    );
\dc_bias[0]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => vgaRed(1),
      I1 => vgaRed(3),
      I2 => \encoded[7]_i_3_n_0\,
      I3 => \dc_bias[0]_i_5__0_n_0\,
      O => \dc_bias[0]_i_4__1_n_0\
    );
\dc_bias[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => vgaRed(4),
      I1 => \dc_bias[0]_i_6_n_0\,
      I2 => vgaRed(2),
      I3 => vgaRed(3),
      I4 => vgaRed(6),
      I5 => \encoded[3]_i_3_n_0\,
      O => \dc_bias[0]_i_5__0_n_0\
    );
\dc_bias[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vgaRed(1),
      I1 => vgaRed(0),
      O => \dc_bias[0]_i_6_n_0\
    );
\dc_bias[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dc_bias[1]_i_2_n_0\,
      I1 => \dc_bias[3]_i_6__0_n_0\,
      I2 => \dc_bias[1]_i_3_n_0\,
      I3 => \dc_bias[3]_i_7_n_0\,
      I4 => \dc_bias[1]_i_4_n_0\,
      O => \dc_bias[1]_i_1_n_0\
    );
\dc_bias[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEBEBBE"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias[0]_i_5__0_n_0\,
      I2 => \encoded[7]_i_3_n_0\,
      I3 => vgaRed(3),
      I4 => vgaRed(1),
      O => \dc_bias[1]_i_10_n_0\
    );
\dc_bias[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56956A56A96A95A9"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[1]\,
      I1 => \dc_bias[3]_i_25_n_0\,
      I2 => vgaRed(0),
      I3 => \encoded[7]_i_3_n_0\,
      I4 => \dc_bias[0]_i_5__0_n_0\,
      I5 => \dc_bias[3]_i_27_n_0\,
      O => \dc_bias[1]_i_11_n_0\
    );
\dc_bias[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666669"
    )
        port map (
      I0 => \dc_bias[2]_i_6_n_0\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \encoded[3]_i_3_n_0\,
      I3 => \dc_bias[0]_i_4__1_n_0\,
      I4 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[1]_i_2_n_0\
    );
\dc_bias[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A565695A96A6A56"
    )
        port map (
      I0 => \dc_bias[2]_i_8_n_0\,
      I1 => \encoded[5]_i_2_n_0\,
      I2 => vgaRed(7),
      I3 => \dc_bias[1]_i_5_n_0\,
      I4 => \dc_bias[1]_i_6__1_n_0\,
      I5 => \dc_bias[1]_i_7__1_n_0\,
      O => \dc_bias[1]_i_3_n_0\
    );
\dc_bias[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"690069FF69FF6900"
    )
        port map (
      I0 => \dc_bias[1]_i_8_n_0\,
      I1 => \dc_bias[1]_i_9_n_0\,
      I2 => \dc_bias[3]_i_19_n_0\,
      I3 => \encoded[3]_i_3_n_0\,
      I4 => \dc_bias[1]_i_10_n_0\,
      I5 => \dc_bias[1]_i_11_n_0\,
      O => \dc_bias[1]_i_4_n_0\
    );
\dc_bias[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vgaRed(0),
      I1 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[1]_i_5_n_0\
    );
\dc_bias[1]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vgaRed(0),
      I1 => vgaRed(1),
      I2 => \encoded[3]_i_3_n_0\,
      O => \dc_bias[1]_i_6__1_n_0\
    );
\dc_bias[1]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vgaRed(2),
      I1 => vgaRed(0),
      I2 => vgaRed(1),
      O => \dc_bias[1]_i_7__1_n_0\
    );
\dc_bias[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B2EE2B8E2B88B2E"
    )
        port map (
      I0 => \dc_bias[0]_i_5__0_n_0\,
      I1 => vgaRed(1),
      I2 => vgaRed(0),
      I3 => vgaRed(3),
      I4 => \encoded[7]_i_3_n_0\,
      I5 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[1]_i_8_n_0\
    );
\dc_bias[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"599AA665"
    )
        port map (
      I0 => \dc_bias[3]_i_20_n_0\,
      I1 => \encoded[7]_i_3_n_0\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => vgaRed(0),
      I4 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[1]_i_9_n_0\
    );
\dc_bias[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \dc_bias[2]_i_2_n_0\,
      I1 => \dc_bias[3]_i_6__0_n_0\,
      I2 => \dc_bias[2]_i_3_n_0\,
      I3 => \dc_bias[3]_i_7_n_0\,
      I4 => \dc_bias[2]_i_4_n_0\,
      O => \dc_bias[2]_i_1_n_0\
    );
\dc_bias[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660600660060660"
    )
        port map (
      I0 => \dc_bias[1]_i_6__1_n_0\,
      I1 => \dc_bias[1]_i_7__1_n_0\,
      I2 => vgaRed(7),
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaRed(0),
      I5 => \encoded[5]_i_2_n_0\,
      O => \dc_bias[2]_i_10_n_0\
    );
\dc_bias[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6656565A6A6A665"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias[3]_i_20_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaRed(0),
      I5 => \encoded[7]_i_3_n_0\,
      O => \dc_bias[2]_i_11_n_0\
    );
\dc_bias[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE017F80807FFE01"
    )
        port map (
      I0 => \dc_bias[0]_i_4__1_n_0\,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \encoded[3]_i_3_n_0\,
      I3 => \dc_bias[2]_i_5_n_0\,
      I4 => \dc_bias[2]_i_6_n_0\,
      I5 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[2]_i_2_n_0\
    );
\dc_bias[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000024B2DB4D"
    )
        port map (
      I0 => \dc_bias[2]_i_7_n_0\,
      I1 => \dc_bias[2]_i_8_n_0\,
      I2 => \dc_bias[2]_i_9_n_0\,
      I3 => \dc_bias[2]_i_10_n_0\,
      I4 => \dc_bias[3]_i_13_n_0\,
      I5 => \dc_bias[3]_i_6__0_n_0\,
      O => \dc_bias[2]_i_3_n_0\
    );
\dc_bias[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"909F9F90"
    )
        port map (
      I0 => \dc_bias[3]_i_10_n_0\,
      I1 => \dc_bias[2]_i_11_n_0\,
      I2 => \encoded[3]_i_3_n_0\,
      I3 => \dc_bias[3]_i_12_n_0\,
      I4 => \dc_bias[2]_i_5_n_0\,
      O => \dc_bias[2]_i_4_n_0\
    );
\dc_bias[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias[3]_i_11_n_0\,
      O => \dc_bias[2]_i_5_n_0\
    );
\dc_bias[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"09906F09F66F90F6"
    )
        port map (
      I0 => vgaRed(3),
      I1 => vgaRed(1),
      I2 => vgaRed(0),
      I3 => \encoded[7]_i_3_n_0\,
      I4 => \dc_bias[0]_i_5__0_n_0\,
      I5 => \dc_bias[3]_i_27_n_0\,
      O => \dc_bias[2]_i_6_n_0\
    );
\dc_bias[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => vgaRed(2),
      I1 => \encoded[3]_i_3_n_0\,
      I2 => vgaRed(1),
      I3 => vgaRed(0),
      O => \dc_bias[2]_i_7_n_0\
    );
\dc_bias[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \dc_bias[3]_i_28_n_0\,
      I1 => \dc_bias[3]_i_29_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaRed(0),
      O => \dc_bias[2]_i_8_n_0\
    );
\dc_bias[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E88E"
    )
        port map (
      I0 => \encoded[5]_i_2_n_0\,
      I1 => vgaRed(7),
      I2 => vgaRed(0),
      I3 => \dc_bias_reg_n_0_[0]\,
      O => \dc_bias[2]_i_9_n_0\
    );
\dc_bias[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vgaDE,
      O => \^blank\
    );
\dc_bias[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \dc_bias[3]_i_19_n_0\,
      I1 => \dc_bias[1]_i_8_n_0\,
      I2 => \dc_bias[1]_i_9_n_0\,
      O => \dc_bias[3]_i_10_n_0\
    );
\dc_bias[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77E7717771771171"
    )
        port map (
      I0 => \dc_bias[3]_i_20_n_0\,
      I1 => \dc_bias[3]_i_19_n_0\,
      I2 => \dc_bias[0]_i_5__0_n_0\,
      I3 => \encoded[7]_i_3_n_0\,
      I4 => vgaRed(0),
      I5 => \dc_bias[3]_i_25_n_0\,
      O => \dc_bias[3]_i_11_n_0\
    );
\dc_bias[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEEFF88CF88CCEEF"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[0]\,
      I1 => \dc_bias_reg_n_0_[1]\,
      I2 => \dc_bias[3]_i_25_n_0\,
      I3 => \dc_bias[3]_i_26_n_0\,
      I4 => \dc_bias[3]_i_18_n_0\,
      I5 => \dc_bias[3]_i_27_n_0\,
      O => \dc_bias[3]_i_12_n_0\
    );
\dc_bias[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D44242422BBDBDBD"
    )
        port map (
      I0 => \dc_bias[3]_i_28_n_0\,
      I1 => \dc_bias[3]_i_29_n_0\,
      I2 => \dc_bias_reg_n_0_[1]\,
      I3 => \dc_bias_reg_n_0_[0]\,
      I4 => vgaRed(0),
      I5 => \dc_bias_reg_n_0_[2]\,
      O => \dc_bias[3]_i_13_n_0\
    );
\dc_bias[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000000BF2B2B02"
    )
        port map (
      I0 => \dc_bias[1]_i_7__1_n_0\,
      I1 => \dc_bias[1]_i_6__1_n_0\,
      I2 => \dc_bias[1]_i_5_n_0\,
      I3 => vgaRed(7),
      I4 => \encoded[5]_i_2_n_0\,
      I5 => \dc_bias[2]_i_8_n_0\,
      O => \dc_bias[3]_i_14_n_0\
    );
\dc_bias[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4224FFFFFFFFFFFF"
    )
        port map (
      I0 => vgaRed(2),
      I1 => \encoded[3]_i_3_n_0\,
      I2 => vgaRed(1),
      I3 => vgaRed(0),
      I4 => \dc_bias[2]_i_8_n_0\,
      I5 => \dc_bias[3]_i_30_n_0\,
      O => \dc_bias[3]_i_15_n_0\
    );
\dc_bias[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAEAE8AAE8AAE8A"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias[3]_i_29_n_0\,
      I2 => \dc_bias[3]_i_28_n_0\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias_reg_n_0_[0]\,
      I5 => vgaRed(0),
      O => \dc_bias[3]_i_16_n_0\
    );
\dc_bias[3]_i_17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60090690"
    )
        port map (
      I0 => \encoded[7]_i_3_n_0\,
      I1 => \dc_bias[0]_i_5__0_n_0\,
      I2 => vgaRed(1),
      I3 => vgaRed(0),
      I4 => vgaRed(3),
      O => \dc_bias[3]_i_17__0_n_0\
    );
\dc_bias[3]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vgaRed(0),
      I1 => \encoded[7]_i_3_n_0\,
      I2 => \dc_bias[0]_i_5__0_n_0\,
      O => \dc_bias[3]_i_18_n_0\
    );
\dc_bias[3]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => vgaRed(2),
      I1 => vgaRed(3),
      I2 => \encoded[3]_i_3_n_0\,
      I3 => vgaRed(1),
      I4 => vgaRed(0),
      O => \dc_bias[3]_i_19_n_0\
    );
\dc_bias[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FEEEEFFFFEEEE"
    )
        port map (
      I0 => \dc_bias[3]_i_3_n_0\,
      I1 => \dc_bias[3]_i_4_n_0\,
      I2 => \dc_bias[3]_i_5_n_0\,
      I3 => \dc_bias[3]_i_6__0_n_0\,
      I4 => \dc_bias[3]_i_7_n_0\,
      I5 => \dc_bias[3]_i_8_n_0\,
      O => \dc_bias[3]_i_2_n_0\
    );
\dc_bias[3]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C39669C3"
    )
        port map (
      I0 => \encoded[3]_i_3_n_0\,
      I1 => vgaRed(4),
      I2 => \encoded[3]_i_2_n_0\,
      I3 => vgaRed(5),
      I4 => vgaRed(6),
      O => \dc_bias[3]_i_20_n_0\
    );
\dc_bias[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800618661860010"
    )
        port map (
      I0 => \dc_bias[3]_i_25_n_0\,
      I1 => vgaRed(0),
      I2 => \encoded[7]_i_3_n_0\,
      I3 => \dc_bias[0]_i_5__0_n_0\,
      I4 => \dc_bias[3]_i_19_n_0\,
      I5 => \dc_bias[3]_i_20_n_0\,
      O => \dc_bias[3]_i_21_n_0\
    );
\dc_bias[3]_i_22__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"596565A6FFFFFFFF"
    )
        port map (
      I0 => \dc_bias[3]_i_27_n_0\,
      I1 => \dc_bias[0]_i_5__0_n_0\,
      I2 => \encoded[7]_i_3_n_0\,
      I3 => vgaRed(0),
      I4 => \dc_bias[3]_i_25_n_0\,
      I5 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[3]_i_22__1_n_0\
    );
\dc_bias[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00E0EE00EE0E00E"
    )
        port map (
      I0 => \dc_bias[1]_i_10_n_0\,
      I1 => \encoded[3]_i_3_n_0\,
      I2 => \dc_bias[3]_i_27_n_0\,
      I3 => \dc_bias[3]_i_18_n_0\,
      I4 => \dc_bias[3]_i_17__0_n_0\,
      I5 => \dc_bias_reg_n_0_[1]\,
      O => \dc_bias[3]_i_23_n_0\
    );
\dc_bias[3]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \dc_bias[0]_i_4__1_n_0\,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => \encoded[3]_i_3_n_0\,
      O => \dc_bias[3]_i_24_n_0\
    );
\dc_bias[3]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vgaRed(3),
      I1 => vgaRed(0),
      I2 => vgaRed(1),
      O => \dc_bias[3]_i_25_n_0\
    );
\dc_bias[3]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dc_bias[0]_i_5__0_n_0\,
      I1 => \encoded[7]_i_3_n_0\,
      I2 => vgaRed(0),
      O => \dc_bias[3]_i_26_n_0\
    );
\dc_bias[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666996669996"
    )
        port map (
      I0 => vgaRed(0),
      I1 => vgaRed(1),
      I2 => \encoded[3]_i_3_n_0\,
      I3 => vgaRed(3),
      I4 => vgaRed(2),
      I5 => \dc_bias[3]_i_20_n_0\,
      O => \dc_bias[3]_i_27_n_0\
    );
\dc_bias[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB4B44BD22D2DD2"
    )
        port map (
      I0 => \encoded[3]_i_3_n_0\,
      I1 => vgaRed(4),
      I2 => vgaRed(3),
      I3 => vgaRed(2),
      I4 => \dc_bias[0]_i_6_n_0\,
      I5 => vgaRed(5),
      O => \dc_bias[3]_i_28_n_0\
    );
\dc_bias[3]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EE8E88E"
    )
        port map (
      I0 => \encoded[3]_i_3_n_0\,
      I1 => vgaRed(7),
      I2 => vgaRed(4),
      I3 => \encoded[5]_i_2_n_0\,
      I4 => vgaRed(6),
      O => \dc_bias[3]_i_29_n_0\
    );
\dc_bias[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82888828"
    )
        port map (
      I0 => \encoded[3]_i_3_n_0\,
      I1 => p_1_in,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias[3]_i_9_n_0\,
      I4 => \dc_bias[3]_i_10_n_0\,
      O => \dc_bias[3]_i_3_n_0\
    );
\dc_bias[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000660"
    )
        port map (
      I0 => \dc_bias[1]_i_7__1_n_0\,
      I1 => \dc_bias[1]_i_6__1_n_0\,
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => vgaRed(0),
      I4 => vgaRed(7),
      I5 => \encoded[5]_i_2_n_0\,
      O => \dc_bias[3]_i_30_n_0\
    );
\dc_bias[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01155440"
    )
        port map (
      I0 => \encoded[3]_i_3_n_0\,
      I1 => \dc_bias_reg_n_0_[2]\,
      I2 => \dc_bias[3]_i_11_n_0\,
      I3 => \dc_bias[3]_i_12_n_0\,
      I4 => \dc_bias[3]_i_6__0_n_0\,
      O => \dc_bias[3]_i_4_n_0\
    );
\dc_bias[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FD0D02F"
    )
        port map (
      I0 => \dc_bias[3]_i_13_n_0\,
      I1 => \dc_bias[3]_i_14_n_0\,
      I2 => \dc_bias[3]_i_15_n_0\,
      I3 => \dc_bias[3]_i_16_n_0\,
      I4 => p_1_in,
      O => \dc_bias[3]_i_5_n_0\
    );
\dc_bias[3]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A565655"
    )
        port map (
      I0 => p_1_in,
      I1 => \dc_bias[3]_i_17__0_n_0\,
      I2 => \dc_bias[3]_i_18_n_0\,
      I3 => \dc_bias[3]_i_19_n_0\,
      I4 => \dc_bias[3]_i_20_n_0\,
      O => \dc_bias[3]_i_6__0_n_0\
    );
\dc_bias[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \dc_bias_reg_n_0_[2]\,
      I1 => \dc_bias_reg_n_0_[0]\,
      I2 => p_1_in,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias[3]_i_21_n_0\,
      O => \dc_bias[3]_i_7_n_0\
    );
\dc_bias[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD7FD5FDFD7FFD7F"
    )
        port map (
      I0 => \dc_bias[3]_i_6__0_n_0\,
      I1 => \dc_bias[3]_i_11_n_0\,
      I2 => \dc_bias_reg_n_0_[2]\,
      I3 => \dc_bias[3]_i_22__1_n_0\,
      I4 => \dc_bias[3]_i_23_n_0\,
      I5 => \dc_bias[3]_i_24_n_0\,
      O => \dc_bias[3]_i_8_n_0\
    );
\dc_bias[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BFF002B"
    )
        port map (
      I0 => \encoded[7]_i_3_n_0\,
      I1 => vgaRed(0),
      I2 => \dc_bias_reg_n_0_[0]\,
      I3 => \dc_bias_reg_n_0_[1]\,
      I4 => \dc_bias[3]_i_20_n_0\,
      O => \dc_bias[3]_i_9_n_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[0]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[0]\,
      R => \^blank\
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[1]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[1]\,
      R => \^blank\
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[2]_i_1_n_0\,
      Q => \dc_bias_reg_n_0_[2]\,
      R => \^blank\
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => \dc_bias[3]_i_2_n_0\,
      Q => p_1_in,
      R => \^blank\
    );
\encoded[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vgaRed(0),
      I1 => \encoded[7]_i_2_n_0\,
      O => \encoded[0]_i_1__0_n_0\
    );
\encoded[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666696"
    )
        port map (
      I0 => vgaRed(1),
      I1 => vgaRed(0),
      I2 => \dc_bias[3]_i_7_n_0\,
      I3 => \dc_bias[3]_i_6__0_n_0\,
      I4 => \encoded[3]_i_3_n_0\,
      O => \encoded[1]_i_1_n_0\
    );
\encoded[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => vgaRed(1),
      I1 => vgaRed(0),
      I2 => vgaRed(2),
      I3 => \encoded[7]_i_2_n_0\,
      O => \encoded[2]_i_1_n_0\
    );
\encoded[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AA60000"
    )
        port map (
      I0 => \encoded[3]_i_2_n_0\,
      I1 => \dc_bias[3]_i_7_n_0\,
      I2 => \dc_bias[3]_i_6__0_n_0\,
      I3 => \encoded[3]_i_3_n_0\,
      I4 => vgaDE,
      O => \encoded[3]_i_1__1_n_0\
    );
\encoded[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => vgaRed(3),
      I1 => vgaRed(2),
      I2 => vgaRed(0),
      I3 => vgaRed(1),
      O => \encoded[3]_i_2_n_0\
    );
\encoded[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DD50445D55D0445"
    )
        port map (
      I0 => \encoded[3]_i_4_n_0\,
      I1 => \encoded[3]_i_5_n_0\,
      I2 => vgaRed(7),
      I3 => \encoded[3]_i_6_n_0\,
      I4 => \encoded[3]_i_7_n_0\,
      I5 => vgaRed(0),
      O => \encoded[3]_i_3_n_0\
    );
\encoded[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => vgaRed(1),
      I1 => vgaRed(3),
      I2 => vgaRed(2),
      I3 => vgaRed(4),
      I4 => vgaRed(6),
      I5 => vgaRed(5),
      O => \encoded[3]_i_4_n_0\
    );
\encoded[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vgaRed(1),
      I1 => vgaRed(3),
      I2 => vgaRed(2),
      O => \encoded[3]_i_5_n_0\
    );
\encoded[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vgaRed(6),
      I1 => vgaRed(5),
      I2 => vgaRed(4),
      O => \encoded[3]_i_6_n_0\
    );
\encoded[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001700171717"
    )
        port map (
      I0 => vgaRed(1),
      I1 => vgaRed(3),
      I2 => vgaRed(2),
      I3 => vgaRed(4),
      I4 => vgaRed(6),
      I5 => vgaRed(5),
      O => \encoded[3]_i_7_n_0\
    );
\encoded[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => vgaRed(3),
      I1 => vgaRed(2),
      I2 => vgaRed(0),
      I3 => vgaRed(1),
      I4 => vgaRed(4),
      I5 => \encoded[7]_i_2_n_0\,
      O => \encoded[4]_i_1_n_0\
    );
\encoded[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999969"
    )
        port map (
      I0 => \encoded[5]_i_2_n_0\,
      I1 => vgaRed(4),
      I2 => \dc_bias[3]_i_7_n_0\,
      I3 => \dc_bias[3]_i_6__0_n_0\,
      I4 => \encoded[3]_i_3_n_0\,
      O => \encoded[5]_i_1_n_0\
    );
\encoded[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => vgaRed(5),
      I1 => vgaRed(1),
      I2 => vgaRed(0),
      I3 => vgaRed(2),
      I4 => vgaRed(3),
      O => \encoded[5]_i_2_n_0\
    );
\encoded[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => vgaRed(4),
      I1 => \encoded[5]_i_2_n_0\,
      I2 => vgaRed(6),
      I3 => \encoded[7]_i_2_n_0\,
      O => \encoded[6]_i_1_n_0\
    );
\encoded[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \encoded[7]_i_2_n_0\,
      I1 => \encoded[7]_i_3_n_0\,
      I2 => vgaDE,
      O => \encoded[7]_i_1__0_n_0\
    );
\encoded[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \dc_bias[3]_i_6__0_n_0\,
      I1 => \dc_bias[3]_i_7_n_0\,
      I2 => \encoded[3]_i_3_n_0\,
      O => \encoded[7]_i_2_n_0\
    );
\encoded[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => vgaRed(6),
      I1 => \encoded[5]_i_2_n_0\,
      I2 => vgaRed(4),
      I3 => vgaRed(7),
      I4 => \encoded[3]_i_3_n_0\,
      O => \encoded[7]_i_3_n_0\
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => vgaDE,
      I1 => \encoded[3]_i_3_n_0\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FBF"
    )
        port map (
      I0 => \dc_bias[3]_i_6__0_n_0\,
      I1 => \dc_bias[3]_i_7_n_0\,
      I2 => vgaDE,
      I3 => \encoded[3]_i_3_n_0\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[0]_i_1__0_n_0\,
      Q => D(0),
      R => \^blank\
    );
\encoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[1]_i_1_n_0\,
      Q => D(1),
      R => \^blank\
    );
\encoded_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[2]_i_1_n_0\,
      Q => D(2),
      S => \^blank\
    );
\encoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[3]_i_1__1_n_0\,
      Q => D(3),
      R => '0'
    );
\encoded_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[4]_i_1_n_0\,
      Q => D(4),
      S => \^blank\
    );
\encoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[5]_i_1_n_0\,
      Q => D(5),
      R => \^blank\
    );
\encoded_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[6]_i_1_n_0\,
      Q => D(6),
      S => \^blank\
    );
\encoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[7]_i_1__0_n_0\,
      Q => D(7),
      R => '0'
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => D(8),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pixelClk,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => D(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid is
  port (
    hdmiEncodedData_2 : out STD_LOGIC;
    hdmiEncodedData_1 : out STD_LOGIC;
    I : out STD_LOGIC;
    hdmiPixelClock : out STD_LOGIC;
    pixelClkx5 : in STD_LOGIC;
    pixelClkx5Ps : in STD_LOGIC;
    vgaDE : in STD_LOGIC;
    vgaRed : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaGreen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaBlue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pixelClk : in STD_LOGIC;
    vgaVS : in STD_LOGIC;
    vgaHS : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid is
  signal D0 : STD_LOGIC;
  signal D1 : STD_LOGIC;
  signal TDMS_encoder_blue_n_0 : STD_LOGIC;
  signal TDMS_encoder_blue_n_1 : STD_LOGIC;
  signal TDMS_encoder_blue_n_2 : STD_LOGIC;
  signal TDMS_encoder_blue_n_3 : STD_LOGIC;
  signal TDMS_encoder_blue_n_4 : STD_LOGIC;
  signal TDMS_encoder_blue_n_5 : STD_LOGIC;
  signal TDMS_encoder_blue_n_6 : STD_LOGIC;
  signal TDMS_encoder_blue_n_7 : STD_LOGIC;
  signal TDMS_encoder_blue_n_8 : STD_LOGIC;
  signal TDMS_encoder_blue_n_9 : STD_LOGIC;
  signal TDMS_encoder_green_n_0 : STD_LOGIC;
  signal TDMS_encoder_green_n_1 : STD_LOGIC;
  signal TDMS_encoder_green_n_2 : STD_LOGIC;
  signal TDMS_encoder_green_n_3 : STD_LOGIC;
  signal TDMS_encoder_green_n_4 : STD_LOGIC;
  signal TDMS_encoder_green_n_5 : STD_LOGIC;
  signal TDMS_encoder_green_n_6 : STD_LOGIC;
  signal TDMS_encoder_green_n_7 : STD_LOGIC;
  signal TDMS_encoder_green_n_8 : STD_LOGIC;
  signal TDMS_encoder_green_n_9 : STD_LOGIC;
  signal TDMS_encoder_red_n_1 : STD_LOGIC;
  signal TDMS_encoder_red_n_10 : STD_LOGIC;
  signal TDMS_encoder_red_n_2 : STD_LOGIC;
  signal TDMS_encoder_red_n_3 : STD_LOGIC;
  signal TDMS_encoder_red_n_4 : STD_LOGIC;
  signal TDMS_encoder_red_n_5 : STD_LOGIC;
  signal TDMS_encoder_red_n_6 : STD_LOGIC;
  signal TDMS_encoder_red_n_7 : STD_LOGIC;
  signal TDMS_encoder_red_n_8 : STD_LOGIC;
  signal TDMS_encoder_red_n_9 : STD_LOGIC;
  signal blank : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal latched_blue : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal latched_green : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal latched_red : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal shift_blue : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal shift_blue_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_blue_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_blue_reg_n_0_[1]\ : STD_LOGIC;
  signal shift_clock : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \shift_clock_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[9]\ : STD_LOGIC;
  signal shift_green : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal shift_green_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_green_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_green_reg_n_0_[1]\ : STD_LOGIC;
  signal shift_red : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_red[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_red[9]_i_2_n_0\ : STD_LOGIC;
  signal NLW_ODDR2_blue_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_blue_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_clock_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_clock_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_green_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_green_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_red_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_red_S_UNCONNECTED : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of ODDR2_blue : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ODDR2_blue : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_blue : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR2_blue : label is "TRUE";
  attribute box_type : string;
  attribute box_type of ODDR2_blue : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_clock : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_clock : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_clock : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_clock : label is "TRUE";
  attribute box_type of ODDR2_clock : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_green : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_green : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_green : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_green : label is "TRUE";
  attribute box_type of ODDR2_green : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_red : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_red : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_red : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_red : label is "TRUE";
  attribute box_type of ODDR2_red : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shift_blue[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \shift_blue[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \shift_blue[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \shift_blue[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \shift_blue[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \shift_blue[5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \shift_blue[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \shift_blue[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \shift_green[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \shift_green[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \shift_green[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \shift_green[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \shift_green[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \shift_green[5]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \shift_green[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \shift_green[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \shift_red[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \shift_red[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \shift_red[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \shift_red[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \shift_red[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \shift_red[5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \shift_red[6]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \shift_red[7]_i_1\ : label is "soft_lutpair61";
begin
ODDR2_blue: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D1 => \shift_blue_reg_n_0_[0]\,
      D2 => \shift_blue_reg_n_0_[1]\,
      Q => I,
      R => NLW_ODDR2_blue_R_UNCONNECTED,
      S => NLW_ODDR2_blue_S_UNCONNECTED
    );
ODDR2_clock: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D1 => shift_clock(0),
      D2 => shift_clock(1),
      Q => hdmiPixelClock,
      R => NLW_ODDR2_clock_R_UNCONNECTED,
      S => NLW_ODDR2_clock_S_UNCONNECTED
    );
ODDR2_green: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D1 => \shift_green_reg_n_0_[0]\,
      D2 => \shift_green_reg_n_0_[1]\,
      Q => hdmiEncodedData_1,
      R => NLW_ODDR2_green_R_UNCONNECTED,
      S => NLW_ODDR2_green_S_UNCONNECTED
    );
ODDR2_red: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D1 => D0,
      D2 => D1,
      Q => hdmiEncodedData_2,
      R => NLW_ODDR2_red_R_UNCONNECTED,
      S => NLW_ODDR2_red_S_UNCONNECTED
    );
TDMS_encoder_blue: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder
     port map (
      D(9) => TDMS_encoder_blue_n_0,
      D(8) => TDMS_encoder_blue_n_1,
      D(7) => TDMS_encoder_blue_n_2,
      D(6) => TDMS_encoder_blue_n_3,
      D(5) => TDMS_encoder_blue_n_4,
      D(4) => TDMS_encoder_blue_n_5,
      D(3) => TDMS_encoder_blue_n_6,
      D(2) => TDMS_encoder_blue_n_7,
      D(1) => TDMS_encoder_blue_n_8,
      D(0) => TDMS_encoder_blue_n_9,
      blank => blank,
      pixelClk => pixelClk,
      vgaBlue(7 downto 0) => vgaBlue(7 downto 0),
      vgaDE => vgaDE,
      vgaHS => vgaHS,
      vgaVS => vgaVS
    );
TDMS_encoder_green: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0
     port map (
      D(9) => TDMS_encoder_green_n_0,
      D(8) => TDMS_encoder_green_n_1,
      D(7) => TDMS_encoder_green_n_2,
      D(6) => TDMS_encoder_green_n_3,
      D(5) => TDMS_encoder_green_n_4,
      D(4) => TDMS_encoder_green_n_5,
      D(3) => TDMS_encoder_green_n_6,
      D(2) => TDMS_encoder_green_n_7,
      D(1) => TDMS_encoder_green_n_8,
      D(0) => TDMS_encoder_green_n_9,
      blank => blank,
      pixelClk => pixelClk,
      vgaDE => vgaDE,
      vgaGreen(7 downto 0) => vgaGreen(7 downto 0)
    );
TDMS_encoder_red: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1
     port map (
      D(9) => TDMS_encoder_red_n_1,
      D(8) => TDMS_encoder_red_n_2,
      D(7) => TDMS_encoder_red_n_3,
      D(6) => TDMS_encoder_red_n_4,
      D(5) => TDMS_encoder_red_n_5,
      D(4) => TDMS_encoder_red_n_6,
      D(3) => TDMS_encoder_red_n_7,
      D(2) => TDMS_encoder_red_n_8,
      D(1) => TDMS_encoder_red_n_9,
      D(0) => TDMS_encoder_red_n_10,
      blank => blank,
      pixelClk => pixelClk,
      vgaDE => vgaDE,
      vgaRed(7 downto 0) => vgaRed(7 downto 0)
    );
\latched_blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_9,
      Q => latched_blue(0),
      R => '0'
    );
\latched_blue_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_8,
      Q => latched_blue(1),
      R => '0'
    );
\latched_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_7,
      Q => latched_blue(2),
      R => '0'
    );
\latched_blue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_6,
      Q => latched_blue(3),
      R => '0'
    );
\latched_blue_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_5,
      Q => latched_blue(4),
      R => '0'
    );
\latched_blue_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_4,
      Q => latched_blue(5),
      R => '0'
    );
\latched_blue_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_3,
      Q => latched_blue(6),
      R => '0'
    );
\latched_blue_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_2,
      Q => latched_blue(7),
      R => '0'
    );
\latched_blue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_1,
      Q => latched_blue(8),
      R => '0'
    );
\latched_blue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_blue_n_0,
      Q => latched_blue(9),
      R => '0'
    );
\latched_green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_9,
      Q => latched_green(0),
      R => '0'
    );
\latched_green_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_8,
      Q => latched_green(1),
      R => '0'
    );
\latched_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_7,
      Q => latched_green(2),
      R => '0'
    );
\latched_green_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_6,
      Q => latched_green(3),
      R => '0'
    );
\latched_green_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_5,
      Q => latched_green(4),
      R => '0'
    );
\latched_green_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_4,
      Q => latched_green(5),
      R => '0'
    );
\latched_green_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_3,
      Q => latched_green(6),
      R => '0'
    );
\latched_green_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_2,
      Q => latched_green(7),
      R => '0'
    );
\latched_green_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_1,
      Q => latched_green(8),
      R => '0'
    );
\latched_green_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_green_n_0,
      Q => latched_green(9),
      R => '0'
    );
\latched_red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_10,
      Q => latched_red(0),
      R => '0'
    );
\latched_red_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_9,
      Q => latched_red(1),
      R => '0'
    );
\latched_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_8,
      Q => latched_red(2),
      R => '0'
    );
\latched_red_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_7,
      Q => latched_red(3),
      R => '0'
    );
\latched_red_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_6,
      Q => latched_red(4),
      R => '0'
    );
\latched_red_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_5,
      Q => latched_red(5),
      R => '0'
    );
\latched_red_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_4,
      Q => latched_red(6),
      R => '0'
    );
\latched_red_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_3,
      Q => latched_red(7),
      R => '0'
    );
\latched_red_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_2,
      Q => latched_red(8),
      R => '0'
    );
\latched_red_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClk,
      CE => '1',
      D => TDMS_encoder_red_n_1,
      Q => latched_red(9),
      R => '0'
    );
\shift_blue[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(2),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(0),
      O => shift_blue_0(0)
    );
\shift_blue[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(3),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(1),
      O => shift_blue_0(1)
    );
\shift_blue[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(2),
      O => shift_blue_0(2)
    );
\shift_blue[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(5),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(3),
      O => shift_blue_0(3)
    );
\shift_blue[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(4),
      O => shift_blue_0(4)
    );
\shift_blue[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(7),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(5),
      O => shift_blue_0(5)
    );
\shift_blue[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(8),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(6),
      O => shift_blue_0(6)
    );
\shift_blue[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(9),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(7),
      O => shift_blue_0(7)
    );
\shift_blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_blue_0(0),
      Q => \shift_blue_reg_n_0_[0]\,
      R => '0'
    );
\shift_blue_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_blue_0(1),
      Q => \shift_blue_reg_n_0_[1]\,
      R => '0'
    );
\shift_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_blue_0(2),
      Q => shift_blue(2),
      R => '0'
    );
\shift_blue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_blue_0(3),
      Q => shift_blue(3),
      R => '0'
    );
\shift_blue_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_blue_0(4),
      Q => shift_blue(4),
      R => '0'
    );
\shift_blue_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_blue_0(5),
      Q => shift_blue(5),
      R => '0'
    );
\shift_blue_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_blue_0(6),
      Q => shift_blue(6),
      R => '0'
    );
\shift_blue_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_blue_0(7),
      Q => shift_blue(7),
      R => '0'
    );
\shift_blue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => latched_blue(8),
      Q => shift_blue(8),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_blue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => latched_blue(9),
      Q => shift_blue(9),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_clock_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => \shift_clock_reg_n_0_[2]\,
      Q => shift_clock(0),
      R => '0'
    );
\shift_clock_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => \shift_clock_reg_n_0_[3]\,
      Q => shift_clock(1),
      R => '0'
    );
\shift_clock_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => \shift_clock_reg_n_0_[4]\,
      Q => \shift_clock_reg_n_0_[2]\,
      R => '0'
    );
\shift_clock_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => \shift_clock_reg_n_0_[5]\,
      Q => \shift_clock_reg_n_0_[3]\,
      R => '0'
    );
\shift_clock_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => \shift_clock_reg_n_0_[6]\,
      Q => \shift_clock_reg_n_0_[4]\,
      R => '0'
    );
\shift_clock_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => \shift_clock_reg_n_0_[7]\,
      Q => \shift_clock_reg_n_0_[5]\,
      R => '0'
    );
\shift_clock_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => \shift_clock_reg_n_0_[8]\,
      Q => \shift_clock_reg_n_0_[6]\,
      R => '0'
    );
\shift_clock_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => \shift_clock_reg_n_0_[9]\,
      Q => \shift_clock_reg_n_0_[7]\,
      R => '0'
    );
\shift_clock_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_clock(0),
      Q => \shift_clock_reg_n_0_[8]\,
      R => '0'
    );
\shift_clock_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_clock(1),
      Q => \shift_clock_reg_n_0_[9]\,
      R => '0'
    );
\shift_green[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(2),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(0),
      O => shift_green_1(0)
    );
\shift_green[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(3),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(1),
      O => shift_green_1(1)
    );
\shift_green[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(2),
      O => shift_green_1(2)
    );
\shift_green[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(5),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(3),
      O => shift_green_1(3)
    );
\shift_green[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(4),
      O => shift_green_1(4)
    );
\shift_green[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(7),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(5),
      O => shift_green_1(5)
    );
\shift_green[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(8),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(6),
      O => shift_green_1(6)
    );
\shift_green[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(9),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(7),
      O => shift_green_1(7)
    );
\shift_green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_green_1(0),
      Q => \shift_green_reg_n_0_[0]\,
      R => '0'
    );
\shift_green_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_green_1(1),
      Q => \shift_green_reg_n_0_[1]\,
      R => '0'
    );
\shift_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_green_1(2),
      Q => shift_green(2),
      R => '0'
    );
\shift_green_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_green_1(3),
      Q => shift_green(3),
      R => '0'
    );
\shift_green_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_green_1(4),
      Q => shift_green(4),
      R => '0'
    );
\shift_green_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_green_1(5),
      Q => shift_green(5),
      R => '0'
    );
\shift_green_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_green_1(6),
      Q => shift_green(6),
      R => '0'
    );
\shift_green_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_green_1(7),
      Q => shift_green(7),
      R => '0'
    );
\shift_green_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => latched_green(8),
      Q => shift_green(8),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_green_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => latched_green(9),
      Q => shift_green(9),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_red[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(0),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(0),
      O => shift_red(0)
    );
\shift_red[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(1),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(1),
      O => shift_red(1)
    );
\shift_red[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(2),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(2),
      O => shift_red(2)
    );
\shift_red[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(3),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(3),
      O => shift_red(3)
    );
\shift_red[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(4),
      O => shift_red(4)
    );
\shift_red[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(5),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(5),
      O => shift_red(5)
    );
\shift_red[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(6),
      O => shift_red(6)
    );
\shift_red[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(7),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(7),
      O => shift_red(7)
    );
\shift_red[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \shift_red[9]_i_2_n_0\,
      I1 => \shift_clock_reg_n_0_[5]\,
      I2 => \shift_clock_reg_n_0_[4]\,
      I3 => \shift_clock_reg_n_0_[2]\,
      I4 => \shift_clock_reg_n_0_[3]\,
      O => \shift_red[9]_i_1_n_0\
    );
\shift_red[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \shift_clock_reg_n_0_[8]\,
      I1 => \shift_clock_reg_n_0_[9]\,
      I2 => \shift_clock_reg_n_0_[6]\,
      I3 => \shift_clock_reg_n_0_[7]\,
      I4 => shift_clock(1),
      I5 => shift_clock(0),
      O => \shift_red[9]_i_2_n_0\
    );
\shift_red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_red(0),
      Q => D0,
      R => '0'
    );
\shift_red_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_red(1),
      Q => D1,
      R => '0'
    );
\shift_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_red(2),
      Q => data1(0),
      R => '0'
    );
\shift_red_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_red(3),
      Q => data1(1),
      R => '0'
    );
\shift_red_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_red(4),
      Q => data1(2),
      R => '0'
    );
\shift_red_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_red(5),
      Q => data1(3),
      R => '0'
    );
\shift_red_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_red(6),
      Q => data1(4),
      R => '0'
    );
\shift_red_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => shift_red(7),
      Q => data1(5),
      R => '0'
    );
\shift_red_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => latched_red(8),
      Q => data1(6),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_red_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixelClkx5,
      CE => '1',
      D => latched_red(9),
      Q => data1(7),
      R => \shift_red[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmiOut is
  port (
    hdmiDP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmiDN : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmiClkP : out STD_LOGIC;
    hdmiClkN : out STD_LOGIC;
    vgaDE : in STD_LOGIC;
    vgaRed : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaGreen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vgaBlue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pixelClkx5 : in STD_LOGIC;
    pixelClkx5Ps : in STD_LOGIC;
    pixelClk : in STD_LOGIC;
    vgaVS : in STD_LOGIC;
    vgaHS : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmiOut;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmiOut is
  signal I : STD_LOGIC;
  signal hdmiEncodedData_1 : STD_LOGIC;
  signal hdmiEncodedData_2 : STD_LOGIC;
  signal hdmiPixelClock : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_blue : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_blue : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of OBUFDS_blue : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_clock : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_clock : label is "OBUFDS";
  attribute box_type of OBUFDS_clock : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_green : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_green : label is "OBUFDS";
  attribute box_type of OBUFDS_green : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_red : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_red : label is "OBUFDS";
  attribute box_type of OBUFDS_red : label is "PRIMITIVE";
begin
OBUFDS_blue: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      O => hdmiDP(0),
      OB => hdmiDN(0)
    );
OBUFDS_clock: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmiPixelClock,
      O => hdmiClkP,
      OB => hdmiClkN
    );
OBUFDS_green: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmiEncodedData_1,
      O => hdmiDP(1),
      OB => hdmiDN(1)
    );
OBUFDS_red: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => hdmiEncodedData_2,
      O => hdmiDP(2),
      OB => hdmiDN(2)
    );
dvidInst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid
     port map (
      I => I,
      hdmiEncodedData_1 => hdmiEncodedData_1,
      hdmiEncodedData_2 => hdmiEncodedData_2,
      hdmiPixelClock => hdmiPixelClock,
      pixelClk => pixelClk,
      pixelClkx5 => pixelClkx5,
      pixelClkx5Ps => pixelClkx5Ps,
      vgaBlue(7 downto 0) => vgaBlue(7 downto 0),
      vgaDE => vgaDE,
      vgaGreen(7 downto 0) => vgaGreen(7 downto 0),
      vgaHS => vgaHS,
      vgaRed(7 downto 0) => vgaRed(7 downto 0),
      vgaVS => vgaVS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "tangerineA7_100_hdmiOut_0_0,hdmiOut,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hdmiOut,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmiOut
     port map (
      hdmiClkN => hdmiClkN,
      hdmiClkP => hdmiClkP,
      hdmiDN(2 downto 0) => hdmiDN(2 downto 0),
      hdmiDP(2 downto 0) => hdmiDP(2 downto 0),
      pixelClk => pixelClk,
      pixelClkx5 => pixelClkx5,
      pixelClkx5Ps => pixelClkx5Ps,
      vgaBlue(7 downto 0) => vgaBlue(7 downto 0),
      vgaDE => vgaDE,
      vgaGreen(7 downto 0) => vgaGreen(7 downto 0),
      vgaHS => vgaHS,
      vgaRed(7 downto 0) => vgaRed(7 downto 0),
      vgaVS => vgaVS
    );
end STRUCTURE;
