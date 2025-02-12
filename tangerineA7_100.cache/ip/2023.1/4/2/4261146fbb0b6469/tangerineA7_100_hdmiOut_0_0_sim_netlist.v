// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Feb 11 11:34:27 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tangerineA7_100_hdmiOut_0_0_sim_netlist.v
// Design      : tangerineA7_100_hdmiOut_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder
   (D,
    vgaBlue,
    vgaDE,
    vgaHS,
    blank,
    pixelClk,
    vgaVS);
  output [9:0]D;
  input [7:0]vgaBlue;
  input vgaDE;
  input vgaHS;
  input blank;
  input pixelClk;
  input vgaVS;

  wire [9:0]D;
  wire blank;
  wire \dc_bias[0]_i_1__1_n_0 ;
  wire \dc_bias[0]_i_2__1_n_0 ;
  wire \dc_bias[0]_i_3__1_n_0 ;
  wire \dc_bias[0]_i_4__0_n_0 ;
  wire \dc_bias[0]_i_5__1_n_0 ;
  wire \dc_bias[0]_i_6__1_n_0 ;
  wire \dc_bias[1]_i_2__1_n_0 ;
  wire \dc_bias[1]_i_3__1_n_0 ;
  wire \dc_bias[1]_i_4__1_n_0 ;
  wire \dc_bias[1]_i_5__0_n_0 ;
  wire \dc_bias[1]_i_6__0_n_0 ;
  wire \dc_bias[1]_i_7__0_n_0 ;
  wire \dc_bias[1]_i_8__1_n_0 ;
  wire \dc_bias[2]_i_1__1_n_0 ;
  wire \dc_bias[2]_i_2__1_n_0 ;
  wire \dc_bias[2]_i_3__1_n_0 ;
  wire \dc_bias[2]_i_4__1_n_0 ;
  wire \dc_bias[2]_i_5__1_n_0 ;
  wire \dc_bias[2]_i_6__1_n_0 ;
  wire \dc_bias[2]_i_7__1_n_0 ;
  wire \dc_bias[2]_i_8__0_n_0 ;
  wire \dc_bias[3]_i_10__1_n_0 ;
  wire \dc_bias[3]_i_11__1_n_0 ;
  wire \dc_bias[3]_i_12__1_n_0 ;
  wire \dc_bias[3]_i_13__1_n_0 ;
  wire \dc_bias[3]_i_14__1_n_0 ;
  wire \dc_bias[3]_i_15__0_n_0 ;
  wire \dc_bias[3]_i_16__1_n_0 ;
  wire \dc_bias[3]_i_17_n_0 ;
  wire \dc_bias[3]_i_18__1_n_0 ;
  wire \dc_bias[3]_i_19__1_n_0 ;
  wire \dc_bias[3]_i_1__0_n_0 ;
  wire \dc_bias[3]_i_20__1_n_0 ;
  wire \dc_bias[3]_i_21__1_n_0 ;
  wire \dc_bias[3]_i_22__0_n_0 ;
  wire \dc_bias[3]_i_23__1_n_0 ;
  wire \dc_bias[3]_i_24__0_n_0 ;
  wire \dc_bias[3]_i_25__0_n_0 ;
  wire \dc_bias[3]_i_26__0_n_0 ;
  wire \dc_bias[3]_i_27__0_n_0 ;
  wire \dc_bias[3]_i_28__0_n_0 ;
  wire \dc_bias[3]_i_2__1_n_0 ;
  wire \dc_bias[3]_i_3__0_n_0 ;
  wire \dc_bias[3]_i_4__0_n_0 ;
  wire \dc_bias[3]_i_5__1_n_0 ;
  wire \dc_bias[3]_i_6_n_0 ;
  wire \dc_bias[3]_i_7__1_n_0 ;
  wire \dc_bias[3]_i_8__1_n_0 ;
  wire \dc_bias[3]_i_9__1_n_0 ;
  wire \dc_bias_reg[1]_i_1_n_0 ;
  wire \dc_bias_reg_n_0_[0] ;
  wire \dc_bias_reg_n_0_[1] ;
  wire \dc_bias_reg_n_0_[2] ;
  wire \encoded[0]_i_1_n_0 ;
  wire \encoded[1]_i_1__1_n_0 ;
  wire \encoded[1]_i_2_n_0 ;
  wire \encoded[2]_i_1__1_n_0 ;
  wire \encoded[3]_i_1__0_n_0 ;
  wire \encoded[3]_i_2__1_n_0 ;
  wire \encoded[4]_i_1__1_n_0 ;
  wire \encoded[5]_i_1__1_n_0 ;
  wire \encoded[5]_i_2__1_n_0 ;
  wire \encoded[6]_i_1__1_n_0 ;
  wire \encoded[6]_i_2__0_n_0 ;
  wire \encoded[6]_i_3_n_0 ;
  wire \encoded[7]_i_1_n_0 ;
  wire \encoded[7]_i_2__0_n_0 ;
  wire \encoded[7]_i_3__0_n_0 ;
  wire \encoded[7]_i_4_n_0 ;
  wire \encoded[7]_i_5_n_0 ;
  wire \encoded[7]_i_6_n_0 ;
  wire \encoded[7]_i_7_n_0 ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire p_1_in;
  wire pixelClk;
  wire [7:0]vgaBlue;
  wire vgaDE;
  wire vgaHS;
  wire vgaVS;

  LUT6 #(
    .INIT(64'h960096FF96FF9600)) 
    \dc_bias[0]_i_1__1 
       (.I0(\dc_bias[3]_i_4__0_n_0 ),
        .I1(\dc_bias[0]_i_2__1_n_0 ),
        .I2(\dc_bias[0]_i_3__1_n_0 ),
        .I3(\dc_bias[3]_i_6_n_0 ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .I5(\dc_bias[0]_i_4__0_n_0 ),
        .O(\dc_bias[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[0]_i_2__1 
       (.I0(\encoded[3]_i_2__1_n_0 ),
        .I1(vgaBlue[5]),
        .I2(vgaBlue[0]),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaBlue[7]),
        .O(\dc_bias[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \dc_bias[0]_i_3__1 
       (.I0(vgaBlue[2]),
        .I1(\encoded[7]_i_2__0_n_0 ),
        .O(\dc_bias[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dc_bias[0]_i_4__0 
       (.I0(\dc_bias[0]_i_5__1_n_0 ),
        .I1(\dc_bias[0]_i_6__1_n_0 ),
        .I2(vgaBlue[1]),
        .I3(vgaBlue[3]),
        .O(\dc_bias[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[0]_i_5__1 
       (.I0(vgaBlue[6]),
        .I1(vgaBlue[5]),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .I3(vgaBlue[7]),
        .I4(\encoded[7]_i_2__0_n_0 ),
        .O(\dc_bias[0]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[0]_i_6__1 
       (.I0(vgaBlue[6]),
        .I1(\encoded[7]_i_2__0_n_0 ),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .O(\dc_bias[0]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0F00F99999999)) 
    \dc_bias[1]_i_2__1 
       (.I0(\dc_bias[1]_i_4__1_n_0 ),
        .I1(\dc_bias[1]_i_5__0_n_0 ),
        .I2(\dc_bias[1]_i_6__0_n_0 ),
        .I3(\dc_bias[1]_i_7__0_n_0 ),
        .I4(\dc_bias[3]_i_12__1_n_0 ),
        .I5(\encoded[7]_i_2__0_n_0 ),
        .O(\dc_bias[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h999999990FF0F00F)) 
    \dc_bias[1]_i_3__1 
       (.I0(\dc_bias[1]_i_5__0_n_0 ),
        .I1(\dc_bias[1]_i_8__1_n_0 ),
        .I2(\dc_bias[2]_i_6__1_n_0 ),
        .I3(\dc_bias[3]_i_18__1_n_0 ),
        .I4(\dc_bias[3]_i_21__1_n_0 ),
        .I5(\dc_bias[3]_i_4__0_n_0 ),
        .O(\dc_bias[1]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hEBBEBEEB)) 
    \dc_bias[1]_i_4__1 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(vgaBlue[3]),
        .I2(vgaBlue[1]),
        .I3(\dc_bias[0]_i_6__1_n_0 ),
        .I4(\dc_bias[0]_i_5__1_n_0 ),
        .O(\dc_bias[1]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[1]_i_5__0 
       (.I0(\dc_bias_reg_n_0_[1] ),
        .I1(\dc_bias[3]_i_23__1_n_0 ),
        .O(\dc_bias[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hCAACA33AA33ACAAC)) 
    \dc_bias[1]_i_6__0 
       (.I0(\dc_bias[0]_i_6__1_n_0 ),
        .I1(vgaBlue[0]),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\dc_bias[0]_i_5__1_n_0 ),
        .I4(vgaBlue[3]),
        .I5(vgaBlue[1]),
        .O(\dc_bias[1]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \dc_bias[1]_i_7__0 
       (.I0(\dc_bias[0]_i_5__1_n_0 ),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(vgaBlue[0]),
        .I3(\dc_bias[3]_i_13__1_n_0 ),
        .I4(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[1]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hDB)) 
    \dc_bias[1]_i_8__1 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias[0]_i_4__0_n_0 ),
        .I2(\encoded[7]_i_2__0_n_0 ),
        .O(\dc_bias[1]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'h55C3FFFF55C30000)) 
    \dc_bias[2]_i_1__1 
       (.I0(\dc_bias[2]_i_2__1_n_0 ),
        .I1(\dc_bias[2]_i_3__1_n_0 ),
        .I2(\dc_bias[2]_i_4__1_n_0 ),
        .I3(\dc_bias[3]_i_4__0_n_0 ),
        .I4(\dc_bias[3]_i_6_n_0 ),
        .I5(\dc_bias[2]_i_5__1_n_0 ),
        .O(\dc_bias[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \dc_bias[2]_i_2__1 
       (.I0(\dc_bias[3]_i_23__1_n_0 ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias[3]_i_11__1_n_0 ),
        .I4(\dc_bias[3]_i_24__0_n_0 ),
        .O(\dc_bias[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h1557571501151501)) 
    \dc_bias[2]_i_3__1 
       (.I0(\dc_bias[2]_i_6__1_n_0 ),
        .I1(\dc_bias[0]_i_3__1_n_0 ),
        .I2(vgaBlue[7]),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaBlue[0]),
        .I5(\dc_bias[2]_i_7__1_n_0 ),
        .O(\dc_bias[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h45545115BAABAEEA)) 
    \dc_bias[2]_i_4__1 
       (.I0(\dc_bias[3]_i_20__1_n_0 ),
        .I1(vgaBlue[2]),
        .I2(vgaBlue[0]),
        .I3(vgaBlue[1]),
        .I4(\encoded[7]_i_2__0_n_0 ),
        .I5(\dc_bias[3]_i_17_n_0 ),
        .O(\dc_bias[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF066660FF09999)) 
    \dc_bias[2]_i_5__1 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias[3]_i_11__1_n_0 ),
        .I2(\dc_bias[2]_i_8__0_n_0 ),
        .I3(\dc_bias[3]_i_9__1_n_0 ),
        .I4(\encoded[7]_i_2__0_n_0 ),
        .I5(\dc_bias[3]_i_10__1_n_0 ),
        .O(\dc_bias[2]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h4128BED7)) 
    \dc_bias[2]_i_6__1 
       (.I0(vgaBlue[2]),
        .I1(vgaBlue[0]),
        .I2(vgaBlue[1]),
        .I3(\encoded[7]_i_2__0_n_0 ),
        .I4(\dc_bias[3]_i_20__1_n_0 ),
        .O(\dc_bias[2]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[2]_i_7__1 
       (.I0(vgaBlue[5]),
        .I1(vgaBlue[1]),
        .I2(vgaBlue[0]),
        .I3(vgaBlue[2]),
        .I4(vgaBlue[3]),
        .O(\dc_bias[2]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A665A6656565)) 
    \dc_bias[2]_i_8__0 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias[3]_i_13__1_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias[0]_i_5__1_n_0 ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .I5(vgaBlue[0]),
        .O(\dc_bias[2]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB0FB)) 
    \dc_bias[3]_i_10__1 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias[0]_i_4__0_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias[3]_i_23__1_n_0 ),
        .O(\dc_bias[3]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'h2444444D444D4DDD)) 
    \dc_bias[3]_i_11__1 
       (.I0(\dc_bias[3]_i_12__1_n_0 ),
        .I1(\dc_bias[3]_i_13__1_n_0 ),
        .I2(\dc_bias[0]_i_6__1_n_0 ),
        .I3(\dc_bias[0]_i_5__1_n_0 ),
        .I4(vgaBlue[0]),
        .I5(\dc_bias[3]_i_25__0_n_0 ),
        .O(\dc_bias[3]_i_11__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h693CC369)) 
    \dc_bias[3]_i_12__1 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(vgaBlue[1]),
        .I2(vgaBlue[0]),
        .I3(vgaBlue[2]),
        .I4(vgaBlue[3]),
        .O(\dc_bias[3]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \dc_bias[3]_i_13__1 
       (.I0(\encoded[6]_i_2__0_n_0 ),
        .I1(vgaBlue[5]),
        .I2(\encoded[7]_i_2__0_n_0 ),
        .I3(vgaBlue[6]),
        .O(\dc_bias[3]_i_13__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h90060960)) 
    \dc_bias[3]_i_14__1 
       (.I0(\dc_bias[0]_i_5__1_n_0 ),
        .I1(\dc_bias[0]_i_6__1_n_0 ),
        .I2(vgaBlue[1]),
        .I3(vgaBlue[0]),
        .I4(vgaBlue[3]),
        .O(\dc_bias[3]_i_14__1_n_0 ));
  LUT6 #(
    .INIT(64'h35C5535CC5355C53)) 
    \dc_bias[3]_i_15__0 
       (.I0(vgaBlue[0]),
        .I1(\encoded[7]_i_2__0_n_0 ),
        .I2(vgaBlue[7]),
        .I3(\encoded[6]_i_2__0_n_0 ),
        .I4(vgaBlue[5]),
        .I5(vgaBlue[6]),
        .O(\dc_bias[3]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h55555556566A6AAA)) 
    \dc_bias[3]_i_16__1 
       (.I0(p_1_in),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\dc_bias[3]_i_26__0_n_0 ),
        .I3(\dc_bias[3]_i_27__0_n_0 ),
        .I4(\dc_bias[3]_i_28__0_n_0 ),
        .I5(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias[3]_i_16__1_n_0 ));
  LUT6 #(
    .INIT(64'hE8818181177E7E7E)) 
    \dc_bias[3]_i_17 
       (.I0(\dc_bias[3]_i_28__0_n_0 ),
        .I1(\dc_bias[3]_i_27__0_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaBlue[0]),
        .I5(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h066F6F06)) 
    \dc_bias[3]_i_18__1 
       (.I0(\encoded[3]_i_2__1_n_0 ),
        .I1(vgaBlue[5]),
        .I2(vgaBlue[7]),
        .I3(vgaBlue[0]),
        .I4(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[3]_i_18__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEB7D)) 
    \dc_bias[3]_i_19__1 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(vgaBlue[1]),
        .I2(vgaBlue[0]),
        .I3(vgaBlue[2]),
        .O(\dc_bias[3]_i_19__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00EEEEFFFFEEEE)) 
    \dc_bias[3]_i_1__0 
       (.I0(\dc_bias[3]_i_2__1_n_0 ),
        .I1(\dc_bias[3]_i_3__0_n_0 ),
        .I2(\dc_bias[3]_i_4__0_n_0 ),
        .I3(\dc_bias[3]_i_5__1_n_0 ),
        .I4(\dc_bias[3]_i_6_n_0 ),
        .I5(\dc_bias[3]_i_7__1_n_0 ),
        .O(\dc_bias[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h69999666)) 
    \dc_bias[3]_i_20__1 
       (.I0(\dc_bias[3]_i_27__0_n_0 ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(vgaBlue[0]),
        .I4(\dc_bias[3]_i_28__0_n_0 ),
        .O(\dc_bias[3]_i_20__1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \dc_bias[3]_i_21__1 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(vgaBlue[2]),
        .I2(\dc_bias[0]_i_2__1_n_0 ),
        .O(\dc_bias[3]_i_21__1_n_0 ));
  LUT6 #(
    .INIT(64'hE997FFFE7FFFE997)) 
    \dc_bias[3]_i_22__0 
       (.I0(vgaBlue[0]),
        .I1(\dc_bias[0]_i_5__1_n_0 ),
        .I2(\dc_bias[0]_i_6__1_n_0 ),
        .I3(\dc_bias[3]_i_25__0_n_0 ),
        .I4(\dc_bias[3]_i_13__1_n_0 ),
        .I5(\dc_bias[3]_i_12__1_n_0 ),
        .O(\dc_bias[3]_i_22__0_n_0 ));
  LUT6 #(
    .INIT(64'h81177EE87EE88117)) 
    \dc_bias[3]_i_23__1 
       (.I0(\dc_bias[3]_i_25__0_n_0 ),
        .I1(vgaBlue[0]),
        .I2(\dc_bias[0]_i_5__1_n_0 ),
        .I3(\dc_bias[0]_i_6__1_n_0 ),
        .I4(\dc_bias[3]_i_13__1_n_0 ),
        .I5(\dc_bias[3]_i_12__1_n_0 ),
        .O(\dc_bias[3]_i_23__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h99F99099)) 
    \dc_bias[3]_i_24__0 
       (.I0(\dc_bias_reg_n_0_[1] ),
        .I1(\dc_bias[3]_i_23__1_n_0 ),
        .I2(\encoded[7]_i_2__0_n_0 ),
        .I3(\dc_bias[0]_i_4__0_n_0 ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[3]_i_24__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[3]_i_25__0 
       (.I0(vgaBlue[3]),
        .I1(vgaBlue[0]),
        .I2(vgaBlue[1]),
        .O(\dc_bias[3]_i_25__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_26__0 
       (.I0(vgaBlue[0]),
        .I1(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[3]_i_26__0_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \dc_bias[3]_i_27__0 
       (.I0(vgaBlue[4]),
        .I1(vgaBlue[5]),
        .I2(\encoded[7]_i_2__0_n_0 ),
        .I3(vgaBlue[3]),
        .I4(vgaBlue[2]),
        .I5(\encoded[1]_i_2_n_0 ),
        .O(\dc_bias[3]_i_27__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8EE8E88E)) 
    \dc_bias[3]_i_28__0 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(vgaBlue[7]),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .I3(vgaBlue[5]),
        .I4(vgaBlue[6]),
        .O(\dc_bias[3]_i_28__0_n_0 ));
  LUT5 #(
    .INIT(32'h88288288)) 
    \dc_bias[3]_i_2__1 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(p_1_in),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias[3]_i_8__1_n_0 ),
        .I4(\dc_bias[3]_i_9__1_n_0 ),
        .O(\dc_bias[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h10514504)) 
    \dc_bias[3]_i_3__0 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(\dc_bias[3]_i_10__1_n_0 ),
        .I2(\dc_bias[3]_i_11__1_n_0 ),
        .I3(\dc_bias_reg_n_0_[2] ),
        .I4(\dc_bias[3]_i_4__0_n_0 ),
        .O(\dc_bias[3]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h65A65565)) 
    \dc_bias[3]_i_4__0 
       (.I0(p_1_in),
        .I1(\dc_bias[3]_i_12__1_n_0 ),
        .I2(\dc_bias[3]_i_13__1_n_0 ),
        .I3(\dc_bias[3]_i_14__1_n_0 ),
        .I4(\dc_bias[3]_i_15__0_n_0 ),
        .O(\dc_bias[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h9995A99995559995)) 
    \dc_bias[3]_i_5__1 
       (.I0(\dc_bias[3]_i_16__1_n_0 ),
        .I1(\dc_bias[3]_i_17_n_0 ),
        .I2(\dc_bias[3]_i_18__1_n_0 ),
        .I3(\dc_bias[3]_i_19__1_n_0 ),
        .I4(\dc_bias[3]_i_20__1_n_0 ),
        .I5(\dc_bias[3]_i_21__1_n_0 ),
        .O(\dc_bias[3]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \dc_bias[3]_i_6 
       (.I0(\dc_bias[3]_i_22__0_n_0 ),
        .I1(p_1_in),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[2] ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF4F4F0FBFFFFF4F)) 
    \dc_bias[3]_i_7__1 
       (.I0(\dc_bias[3]_i_23__1_n_0 ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\dc_bias[3]_i_4__0_n_0 ),
        .I3(\dc_bias[3]_i_24__0_n_0 ),
        .I4(\dc_bias_reg_n_0_[2] ),
        .I5(\dc_bias[3]_i_11__1_n_0 ),
        .O(\dc_bias[3]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h17FF0017)) 
    \dc_bias[3]_i_8__1 
       (.I0(vgaBlue[0]),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(\dc_bias[0]_i_5__1_n_0 ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias[3]_i_13__1_n_0 ),
        .O(\dc_bias[3]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \dc_bias[3]_i_9__1 
       (.I0(\dc_bias[3]_i_12__1_n_0 ),
        .I1(\dc_bias[1]_i_7__0_n_0 ),
        .I2(\dc_bias[1]_i_6__0_n_0 ),
        .O(\dc_bias[3]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1__1_n_0 ),
        .Q(\dc_bias_reg_n_0_[0] ),
        .R(blank));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias_reg[1]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[1] ),
        .R(blank));
  MUXF7 \dc_bias_reg[1]_i_1 
       (.I0(\dc_bias[1]_i_2__1_n_0 ),
        .I1(\dc_bias[1]_i_3__1_n_0 ),
        .O(\dc_bias_reg[1]_i_1_n_0 ),
        .S(\dc_bias[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1__1_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(blank));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[3]_i_1__0_n_0 ),
        .Q(p_1_in),
        .R(blank));
  LUT6 #(
    .INIT(64'h784BFFFF784B0000)) 
    \encoded[0]_i_1 
       (.I0(\dc_bias[3]_i_4__0_n_0 ),
        .I1(\dc_bias[3]_i_6_n_0 ),
        .I2(vgaBlue[0]),
        .I3(\encoded[7]_i_2__0_n_0 ),
        .I4(vgaDE),
        .I5(vgaHS),
        .O(\encoded[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F90FFFF6F900000)) 
    \encoded[1]_i_1__1 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(\dc_bias[3]_i_4__0_n_0 ),
        .I2(\dc_bias[3]_i_6_n_0 ),
        .I3(\encoded[1]_i_2_n_0 ),
        .I4(vgaDE),
        .I5(vgaHS),
        .O(\encoded[1]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \encoded[1]_i_2 
       (.I0(vgaBlue[1]),
        .I1(vgaBlue[0]),
        .O(\encoded[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h966900009669FFFF)) 
    \encoded[2]_i_1__1 
       (.I0(vgaBlue[1]),
        .I1(vgaBlue[0]),
        .I2(vgaBlue[2]),
        .I3(\encoded[6]_i_3_n_0 ),
        .I4(vgaDE),
        .I5(vgaHS),
        .O(\encoded[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6F90FFFF6F900000)) 
    \encoded[3]_i_1__0 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(\dc_bias[3]_i_4__0_n_0 ),
        .I2(\dc_bias[3]_i_6_n_0 ),
        .I3(\encoded[3]_i_2__1_n_0 ),
        .I4(vgaDE),
        .I5(vgaHS),
        .O(\encoded[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \encoded[3]_i_2__1 
       (.I0(vgaBlue[3]),
        .I1(vgaBlue[2]),
        .I2(vgaBlue[0]),
        .I3(vgaBlue[1]),
        .O(\encoded[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h606F)) 
    \encoded[4]_i_1__1 
       (.I0(\encoded[6]_i_2__0_n_0 ),
        .I1(\encoded[6]_i_3_n_0 ),
        .I2(vgaDE),
        .I3(vgaHS),
        .O(\encoded[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6F90FFFF6F900000)) 
    \encoded[5]_i_1__1 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(\dc_bias[3]_i_4__0_n_0 ),
        .I2(\dc_bias[3]_i_6_n_0 ),
        .I3(\encoded[5]_i_2__1_n_0 ),
        .I4(vgaDE),
        .I5(vgaHS),
        .O(\encoded[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \encoded[5]_i_2__1 
       (.I0(vgaBlue[5]),
        .I1(vgaBlue[3]),
        .I2(vgaBlue[2]),
        .I3(vgaBlue[0]),
        .I4(vgaBlue[1]),
        .I5(vgaBlue[4]),
        .O(\encoded[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h699600006996FFFF)) 
    \encoded[6]_i_1__1 
       (.I0(\encoded[6]_i_2__0_n_0 ),
        .I1(vgaBlue[5]),
        .I2(vgaBlue[6]),
        .I3(\encoded[6]_i_3_n_0 ),
        .I4(vgaDE),
        .I5(vgaHS),
        .O(\encoded[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[6]_i_2__0 
       (.I0(vgaBlue[4]),
        .I1(vgaBlue[1]),
        .I2(vgaBlue[0]),
        .I3(vgaBlue[2]),
        .I4(vgaBlue[3]),
        .O(\encoded[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \encoded[6]_i_3 
       (.I0(\dc_bias[3]_i_4__0_n_0 ),
        .I1(\dc_bias[3]_i_6_n_0 ),
        .I2(\encoded[7]_i_2__0_n_0 ),
        .O(\encoded[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F90FFFF6F900000)) 
    \encoded[7]_i_1 
       (.I0(\encoded[7]_i_2__0_n_0 ),
        .I1(\dc_bias[3]_i_4__0_n_0 ),
        .I2(\dc_bias[3]_i_6_n_0 ),
        .I3(\encoded[7]_i_3__0_n_0 ),
        .I4(vgaDE),
        .I5(vgaHS),
        .O(\encoded[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5DD50445D55D0445)) 
    \encoded[7]_i_2__0 
       (.I0(\encoded[7]_i_4_n_0 ),
        .I1(\encoded[7]_i_5_n_0 ),
        .I2(vgaBlue[7]),
        .I3(\encoded[7]_i_6_n_0 ),
        .I4(\encoded[7]_i_7_n_0 ),
        .I5(vgaBlue[0]),
        .O(\encoded[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \encoded[7]_i_3__0 
       (.I0(vgaBlue[7]),
        .I1(\encoded[6]_i_2__0_n_0 ),
        .I2(vgaBlue[5]),
        .I3(vgaBlue[6]),
        .O(\encoded[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \encoded[7]_i_4 
       (.I0(vgaBlue[1]),
        .I1(vgaBlue[3]),
        .I2(vgaBlue[2]),
        .I3(vgaBlue[4]),
        .I4(vgaBlue[6]),
        .I5(vgaBlue[5]),
        .O(\encoded[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \encoded[7]_i_5 
       (.I0(vgaBlue[1]),
        .I1(vgaBlue[3]),
        .I2(vgaBlue[2]),
        .O(\encoded[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \encoded[7]_i_6 
       (.I0(vgaBlue[4]),
        .I1(vgaBlue[6]),
        .I2(vgaBlue[5]),
        .O(\encoded[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000001700171717)) 
    \encoded[7]_i_7 
       (.I0(vgaBlue[1]),
        .I1(vgaBlue[3]),
        .I2(vgaBlue[2]),
        .I3(vgaBlue[4]),
        .I4(vgaBlue[6]),
        .I5(vgaBlue[5]),
        .O(\encoded[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \encoded[8]_i_1 
       (.I0(vgaHS),
        .I1(vgaDE),
        .I2(\encoded[7]_i_2__0_n_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3AAC300C3FFC3)) 
    \encoded[9]_i_1 
       (.I0(\dc_bias[3]_i_4__0_n_0 ),
        .I1(vgaVS),
        .I2(vgaHS),
        .I3(vgaDE),
        .I4(\encoded[7]_i_2__0_n_0 ),
        .I5(\dc_bias[3]_i_6_n_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE \encoded_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[1]_i_1__1_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \encoded_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[2]_i_1__1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \encoded_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[3]_i_1__0_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \encoded_reg[4] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[4]_i_1__1_n_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \encoded_reg[5] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[5]_i_1__1_n_0 ),
        .Q(D[5]),
        .R(1'b0));
  FDRE \encoded_reg[6] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[6]_i_1__1_n_0 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \encoded_reg[7] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TDMS_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0
   (D,
    vgaGreen,
    vgaDE,
    blank,
    pixelClk);
  output [9:0]D;
  input [7:0]vgaGreen;
  input vgaDE;
  input blank;
  input pixelClk;

  wire [9:0]D;
  wire blank;
  wire \dc_bias[0]_i_1__0_n_0 ;
  wire \dc_bias[0]_i_2__0_n_0 ;
  wire \dc_bias[0]_i_3_n_0 ;
  wire \dc_bias[0]_i_4_n_0 ;
  wire \dc_bias[0]_i_5_n_0 ;
  wire \dc_bias[0]_i_6__0_n_0 ;
  wire \dc_bias[0]_i_7_n_0 ;
  wire \dc_bias[0]_i_8_n_0 ;
  wire \dc_bias[1]_i_1__0_n_0 ;
  wire \dc_bias[1]_i_2__0_n_0 ;
  wire \dc_bias[1]_i_3__0_n_0 ;
  wire \dc_bias[1]_i_4__0_n_0 ;
  wire \dc_bias[1]_i_5__1_n_0 ;
  wire \dc_bias[1]_i_6_n_0 ;
  wire \dc_bias[1]_i_7_n_0 ;
  wire \dc_bias[1]_i_8__0_n_0 ;
  wire \dc_bias[2]_i_10__0_n_0 ;
  wire \dc_bias[2]_i_11__0_n_0 ;
  wire \dc_bias[2]_i_12_n_0 ;
  wire \dc_bias[2]_i_13_n_0 ;
  wire \dc_bias[2]_i_14_n_0 ;
  wire \dc_bias[2]_i_15_n_0 ;
  wire \dc_bias[2]_i_16_n_0 ;
  wire \dc_bias[2]_i_17_n_0 ;
  wire \dc_bias[2]_i_18_n_0 ;
  wire \dc_bias[2]_i_19_n_0 ;
  wire \dc_bias[2]_i_1__0_n_0 ;
  wire \dc_bias[2]_i_20_n_0 ;
  wire \dc_bias[2]_i_21_n_0 ;
  wire \dc_bias[2]_i_22_n_0 ;
  wire \dc_bias[2]_i_2__0_n_0 ;
  wire \dc_bias[2]_i_3__0_n_0 ;
  wire \dc_bias[2]_i_4__0_n_0 ;
  wire \dc_bias[2]_i_5__0_n_0 ;
  wire \dc_bias[2]_i_6__0_n_0 ;
  wire \dc_bias[2]_i_7__0_n_0 ;
  wire \dc_bias[2]_i_8__1_n_0 ;
  wire \dc_bias[2]_i_9__0_n_0 ;
  wire \dc_bias[3]_i_10__0_n_0 ;
  wire \dc_bias[3]_i_11__0_n_0 ;
  wire \dc_bias[3]_i_12__0_n_0 ;
  wire \dc_bias[3]_i_13__0_n_0 ;
  wire \dc_bias[3]_i_14__0_n_0 ;
  wire \dc_bias[3]_i_15__1_n_0 ;
  wire \dc_bias[3]_i_16__0_n_0 ;
  wire \dc_bias[3]_i_17__1_n_0 ;
  wire \dc_bias[3]_i_18__0_n_0 ;
  wire \dc_bias[3]_i_19__0_n_0 ;
  wire \dc_bias[3]_i_20__0_n_0 ;
  wire \dc_bias[3]_i_21__0_n_0 ;
  wire \dc_bias[3]_i_22_n_0 ;
  wire \dc_bias[3]_i_23__0_n_0 ;
  wire \dc_bias[3]_i_2__0_n_0 ;
  wire \dc_bias[3]_i_5__0_n_0 ;
  wire \dc_bias[3]_i_6__1_n_0 ;
  wire \dc_bias[3]_i_7__0_n_0 ;
  wire \dc_bias[3]_i_8__0_n_0 ;
  wire \dc_bias[3]_i_9__0_n_0 ;
  wire \dc_bias_reg[3]_i_1_n_0 ;
  wire \dc_bias_reg[3]_i_3_n_0 ;
  wire \dc_bias_reg[3]_i_4_n_0 ;
  wire \dc_bias_reg_n_0_[0] ;
  wire \dc_bias_reg_n_0_[1] ;
  wire \dc_bias_reg_n_0_[2] ;
  wire \encoded[0]_i_1__1_n_0 ;
  wire \encoded[1]_i_1__0_n_0 ;
  wire \encoded[2]_i_1__0_n_0 ;
  wire \encoded[3]_i_1_n_0 ;
  wire \encoded[3]_i_2__0_n_0 ;
  wire \encoded[4]_i_1__0_n_0 ;
  wire \encoded[5]_i_1__0_n_0 ;
  wire \encoded[5]_i_2__0_n_0 ;
  wire \encoded[6]_i_1__0_n_0 ;
  wire \encoded[6]_i_2_n_0 ;
  wire \encoded[7]_i_1__1_n_0 ;
  wire \encoded[7]_i_2__1_n_0 ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire p_1_in;
  wire pixelClk;
  wire vgaDE;
  wire [7:0]vgaGreen;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h906F6F90)) 
    \dc_bias[0]_i_1__0 
       (.I0(\dc_bias[2]_i_5__0_n_0 ),
        .I1(\dc_bias[0]_i_2__0_n_0 ),
        .I2(\dc_bias[3]_i_2__0_n_0 ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(\dc_bias[0]_i_3_n_0 ),
        .O(\dc_bias[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FF00FFA0FFFA)) 
    \dc_bias[0]_i_2__0 
       (.I0(\dc_bias[0]_i_4_n_0 ),
        .I1(vgaGreen[0]),
        .I2(vgaGreen[7]),
        .I3(\dc_bias[0]_i_5_n_0 ),
        .I4(\dc_bias[0]_i_6__0_n_0 ),
        .I5(\dc_bias[0]_i_7_n_0 ),
        .O(\dc_bias[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \dc_bias[0]_i_3 
       (.I0(vgaGreen[1]),
        .I1(vgaGreen[3]),
        .I2(\dc_bias[0]_i_8_n_0 ),
        .I3(\encoded[7]_i_2__1_n_0 ),
        .O(\dc_bias[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[0]_i_4 
       (.I0(vgaGreen[4]),
        .I1(vgaGreen[6]),
        .I2(vgaGreen[5]),
        .O(\dc_bias[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \dc_bias[0]_i_5 
       (.I0(vgaGreen[2]),
        .I1(vgaGreen[3]),
        .I2(vgaGreen[1]),
        .I3(vgaGreen[5]),
        .I4(vgaGreen[6]),
        .I5(vgaGreen[4]),
        .O(\dc_bias[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[0]_i_6__0 
       (.I0(vgaGreen[2]),
        .I1(vgaGreen[3]),
        .I2(vgaGreen[1]),
        .O(\dc_bias[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000001700171717)) 
    \dc_bias[0]_i_7 
       (.I0(vgaGreen[5]),
        .I1(vgaGreen[6]),
        .I2(vgaGreen[4]),
        .I3(vgaGreen[2]),
        .I4(vgaGreen[3]),
        .I5(vgaGreen[1]),
        .O(\dc_bias[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[0]_i_8 
       (.I0(\dc_bias[0]_i_2__0_n_0 ),
        .I1(\encoded[5]_i_2__0_n_0 ),
        .I2(vgaGreen[6]),
        .O(\dc_bias[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dc_bias[1]_i_1__0 
       (.I0(\dc_bias[1]_i_2__0_n_0 ),
        .I1(\dc_bias[2]_i_5__0_n_0 ),
        .I2(\dc_bias[1]_i_3__0_n_0 ),
        .I3(\dc_bias[3]_i_2__0_n_0 ),
        .I4(\dc_bias[1]_i_4__0_n_0 ),
        .O(\dc_bias[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA96A95A995A95695)) 
    \dc_bias[1]_i_2__0 
       (.I0(\dc_bias[2]_i_12_n_0 ),
        .I1(\dc_bias[2]_i_8__1_n_0 ),
        .I2(\dc_bias[2]_i_9__0_n_0 ),
        .I3(\dc_bias[2]_i_11__0_n_0 ),
        .I4(vgaGreen[7]),
        .I5(\dc_bias[2]_i_10__0_n_0 ),
        .O(\dc_bias[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h96C3C369)) 
    \dc_bias[1]_i_3__0 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\dc_bias[3]_i_6__1_n_0 ),
        .I3(\dc_bias[0]_i_3_n_0 ),
        .I4(\dc_bias[0]_i_2__0_n_0 ),
        .O(\dc_bias[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \dc_bias[1]_i_4__0 
       (.I0(\dc_bias[1]_i_5__1_n_0 ),
        .I1(\dc_bias[1]_i_6_n_0 ),
        .I2(\dc_bias[0]_i_2__0_n_0 ),
        .I3(\dc_bias[1]_i_7_n_0 ),
        .I4(\dc_bias[1]_i_8__0_n_0 ),
        .I5(\dc_bias[2]_i_17_n_0 ),
        .O(\dc_bias[1]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \dc_bias[1]_i_5__1 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\encoded[7]_i_2__1_n_0 ),
        .I2(\dc_bias[0]_i_8_n_0 ),
        .I3(vgaGreen[3]),
        .I4(vgaGreen[1]),
        .O(\dc_bias[1]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h6696696669669969)) 
    \dc_bias[1]_i_6 
       (.I0(\dc_bias_reg_n_0_[1] ),
        .I1(\dc_bias[3]_i_12__0_n_0 ),
        .I2(vgaGreen[0]),
        .I3(\encoded[7]_i_2__1_n_0 ),
        .I4(\dc_bias[0]_i_8_n_0 ),
        .I5(\dc_bias[3]_i_13__0_n_0 ),
        .O(\dc_bias[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B2EE2B8E2B88B2E)) 
    \dc_bias[1]_i_7 
       (.I0(\dc_bias[0]_i_8_n_0 ),
        .I1(vgaGreen[1]),
        .I2(vgaGreen[0]),
        .I3(vgaGreen[3]),
        .I4(\encoded[7]_i_2__1_n_0 ),
        .I5(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \dc_bias[1]_i_8__0 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(vgaGreen[0]),
        .I2(\encoded[7]_i_2__1_n_0 ),
        .I3(\dc_bias[2]_i_18_n_0 ),
        .I4(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[1]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \dc_bias[2]_i_10__0 
       (.I0(vgaGreen[5]),
        .I1(vgaGreen[2]),
        .I2(vgaGreen[3]),
        .I3(vgaGreen[1]),
        .I4(vgaGreen[0]),
        .O(\dc_bias[2]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[2]_i_11__0 
       (.I0(vgaGreen[0]),
        .I1(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[2]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \dc_bias[2]_i_12 
       (.I0(\dc_bias[2]_i_14_n_0 ),
        .I1(\dc_bias[2]_i_13_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaGreen[0]),
        .O(\dc_bias[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h4DD4D44D)) 
    \dc_bias[2]_i_13 
       (.I0(\dc_bias[0]_i_2__0_n_0 ),
        .I1(vgaGreen[7]),
        .I2(\encoded[5]_i_2__0_n_0 ),
        .I3(vgaGreen[5]),
        .I4(vgaGreen[6]),
        .O(\dc_bias[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6996C33C3CC36996)) 
    \dc_bias[2]_i_14 
       (.I0(\dc_bias[0]_i_2__0_n_0 ),
        .I1(\encoded[3]_i_2__0_n_0 ),
        .I2(vgaGreen[3]),
        .I3(vgaGreen[2]),
        .I4(vgaGreen[4]),
        .I5(vgaGreen[5]),
        .O(\dc_bias[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h60090690)) 
    \dc_bias[2]_i_15 
       (.I0(\dc_bias[0]_i_8_n_0 ),
        .I1(\encoded[7]_i_2__1_n_0 ),
        .I2(vgaGreen[1]),
        .I3(vgaGreen[0]),
        .I4(vgaGreen[3]),
        .O(\dc_bias[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h69FFFF6969000069)) 
    \dc_bias[2]_i_16 
       (.I0(\dc_bias[0]_i_2__0_n_0 ),
        .I1(\encoded[5]_i_2__0_n_0 ),
        .I2(vgaGreen[6]),
        .I3(vgaGreen[7]),
        .I4(vgaGreen[5]),
        .I5(vgaGreen[0]),
        .O(\dc_bias[2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h4BB4D22D)) 
    \dc_bias[2]_i_17 
       (.I0(vgaGreen[2]),
        .I1(vgaGreen[3]),
        .I2(vgaGreen[0]),
        .I3(vgaGreen[1]),
        .I4(\dc_bias[0]_i_2__0_n_0 ),
        .O(\dc_bias[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hDB24)) 
    \dc_bias[2]_i_18 
       (.I0(\dc_bias[0]_i_2__0_n_0 ),
        .I1(vgaGreen[5]),
        .I2(vgaGreen[6]),
        .I3(\encoded[5]_i_2__0_n_0 ),
        .O(\dc_bias[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hCEEFF88CF88CCEEF)) 
    \dc_bias[2]_i_19 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\dc_bias[3]_i_13__0_n_0 ),
        .I3(\dc_bias[2]_i_22_n_0 ),
        .I4(\dc_bias[2]_i_16_n_0 ),
        .I5(\dc_bias[3]_i_12__0_n_0 ),
        .O(\dc_bias[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hC355FFFFC3550000)) 
    \dc_bias[2]_i_1__0 
       (.I0(\dc_bias[2]_i_2__0_n_0 ),
        .I1(\dc_bias[2]_i_3__0_n_0 ),
        .I2(\dc_bias[2]_i_4__0_n_0 ),
        .I3(\dc_bias[2]_i_5__0_n_0 ),
        .I4(\dc_bias[3]_i_2__0_n_0 ),
        .I5(\dc_bias[2]_i_6__0_n_0 ),
        .O(\dc_bias[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h599A9A9A5959599A)) 
    \dc_bias[2]_i_20 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias[2]_i_18_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaGreen[0]),
        .I5(\encoded[7]_i_2__1_n_0 ),
        .O(\dc_bias[2]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \dc_bias[2]_i_21 
       (.I0(\dc_bias[1]_i_7_n_0 ),
        .I1(\dc_bias[1]_i_8__0_n_0 ),
        .I2(\dc_bias[2]_i_17_n_0 ),
        .O(\dc_bias[2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[2]_i_22 
       (.I0(vgaGreen[5]),
        .I1(vgaGreen[7]),
        .I2(vgaGreen[0]),
        .O(\dc_bias[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFD02BF40BF4002FD)) 
    \dc_bias[2]_i_2__0 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias[0]_i_3_n_0 ),
        .I2(\dc_bias[0]_i_2__0_n_0 ),
        .I3(\dc_bias[2]_i_7__0_n_0 ),
        .I4(\dc_bias[3]_i_6__1_n_0 ),
        .I5(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hE880FEE800018000)) 
    \dc_bias[2]_i_3__0 
       (.I0(\dc_bias[2]_i_8__1_n_0 ),
        .I1(\dc_bias[2]_i_9__0_n_0 ),
        .I2(\dc_bias[2]_i_10__0_n_0 ),
        .I3(vgaGreen[7]),
        .I4(\dc_bias[2]_i_11__0_n_0 ),
        .I5(\dc_bias[2]_i_12_n_0 ),
        .O(\dc_bias[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hE8818181177E7E7E)) 
    \dc_bias[2]_i_4__0 
       (.I0(\dc_bias[2]_i_13_n_0 ),
        .I1(\dc_bias[2]_i_14_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaGreen[0]),
        .I5(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias[2]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h95A9A9AA)) 
    \dc_bias[2]_i_5__0 
       (.I0(p_1_in),
        .I1(\dc_bias[2]_i_15_n_0 ),
        .I2(\dc_bias[2]_i_16_n_0 ),
        .I3(\dc_bias[2]_i_17_n_0 ),
        .I4(\dc_bias[2]_i_18_n_0 ),
        .O(\dc_bias[2]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \dc_bias[2]_i_6__0 
       (.I0(\dc_bias[2]_i_19_n_0 ),
        .I1(\dc_bias[2]_i_7__0_n_0 ),
        .I2(\dc_bias[0]_i_2__0_n_0 ),
        .I3(\dc_bias[2]_i_20_n_0 ),
        .I4(\dc_bias[2]_i_21_n_0 ),
        .O(\dc_bias[2]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[2]_i_7__0 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias[3]_i_7__0_n_0 ),
        .O(\dc_bias[2]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[2]_i_8__1 
       (.I0(vgaGreen[2]),
        .I1(vgaGreen[0]),
        .I2(vgaGreen[1]),
        .O(\dc_bias[2]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[2]_i_9__0 
       (.I0(vgaGreen[0]),
        .I1(vgaGreen[1]),
        .I2(\dc_bias[0]_i_2__0_n_0 ),
        .O(\dc_bias[2]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AA9A9956AA96AA9)) 
    \dc_bias[3]_i_10__0 
       (.I0(\dc_bias[2]_i_5__0_n_0 ),
        .I1(\dc_bias[3]_i_15__1_n_0 ),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias[3]_i_7__0_n_0 ),
        .I4(\dc_bias[3]_i_16__0_n_0 ),
        .I5(\dc_bias[3]_i_17__1_n_0 ),
        .O(\dc_bias[3]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h4DDF0004B220FFFB)) 
    \dc_bias[3]_i_11__0 
       (.I0(\dc_bias[3]_i_18__0_n_0 ),
        .I1(\dc_bias[3]_i_19__0_n_0 ),
        .I2(\dc_bias[3]_i_20__0_n_0 ),
        .I3(\dc_bias[2]_i_12_n_0 ),
        .I4(\dc_bias[2]_i_4__0_n_0 ),
        .I5(\dc_bias[3]_i_21__0_n_0 ),
        .O(\dc_bias[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h96C33C96693CC369)) 
    \dc_bias[3]_i_12__0 
       (.I0(\dc_bias[0]_i_2__0_n_0 ),
        .I1(vgaGreen[1]),
        .I2(vgaGreen[0]),
        .I3(vgaGreen[3]),
        .I4(vgaGreen[2]),
        .I5(\dc_bias[2]_i_18_n_0 ),
        .O(\dc_bias[3]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[3]_i_13__0 
       (.I0(vgaGreen[3]),
        .I1(vgaGreen[0]),
        .I2(vgaGreen[1]),
        .O(\dc_bias[3]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h2BFF002B)) 
    \dc_bias[3]_i_14__0 
       (.I0(\encoded[7]_i_2__1_n_0 ),
        .I1(vgaGreen[0]),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias[2]_i_18_n_0 ),
        .O(\dc_bias[3]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'hA69A9A5900000000)) 
    \dc_bias[3]_i_15__1 
       (.I0(\dc_bias[3]_i_12__0_n_0 ),
        .I1(vgaGreen[0]),
        .I2(\encoded[7]_i_2__1_n_0 ),
        .I3(\dc_bias[0]_i_8_n_0 ),
        .I4(\dc_bias[3]_i_13__0_n_0 ),
        .I5(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[3]_i_15__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669000096699669)) 
    \dc_bias[3]_i_16__0 
       (.I0(\dc_bias[2]_i_15_n_0 ),
        .I1(\dc_bias[2]_i_16_n_0 ),
        .I2(\dc_bias[3]_i_12__0_n_0 ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias[1]_i_5__1_n_0 ),
        .I5(\dc_bias[0]_i_2__0_n_0 ),
        .O(\dc_bias[3]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \dc_bias[3]_i_17__1 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias[0]_i_3_n_0 ),
        .I2(\dc_bias[0]_i_2__0_n_0 ),
        .O(\dc_bias[3]_i_17__1_n_0 ));
  LUT6 #(
    .INIT(64'hF66F6FF66FF6F66F)) 
    \dc_bias[3]_i_18__0 
       (.I0(\dc_bias[2]_i_9__0_n_0 ),
        .I1(\dc_bias[2]_i_8__1_n_0 ),
        .I2(vgaGreen[7]),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaGreen[0]),
        .I5(\dc_bias[2]_i_10__0_n_0 ),
        .O(\dc_bias[3]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h066F6F06)) 
    \dc_bias[3]_i_19__0 
       (.I0(vgaGreen[0]),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(vgaGreen[7]),
        .I3(\dc_bias[3]_i_22_n_0 ),
        .I4(vgaGreen[5]),
        .O(\dc_bias[3]_i_19__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1881)) 
    \dc_bias[3]_i_20__0 
       (.I0(vgaGreen[2]),
        .I1(\dc_bias[0]_i_2__0_n_0 ),
        .I2(vgaGreen[1]),
        .I3(vgaGreen[0]),
        .O(\dc_bias[3]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'h55555556566A6AAA)) 
    \dc_bias[3]_i_21__0 
       (.I0(p_1_in),
        .I1(\dc_bias[3]_i_23__0_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias[2]_i_14_n_0 ),
        .I4(\dc_bias[2]_i_13_n_0 ),
        .I5(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias[3]_i_21__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dc_bias[3]_i_22 
       (.I0(vgaGreen[0]),
        .I1(vgaGreen[1]),
        .I2(vgaGreen[3]),
        .I3(vgaGreen[2]),
        .O(\dc_bias[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_23__0 
       (.I0(vgaGreen[0]),
        .I1(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[3]_i_23__0_n_0 ));
  LUT4 #(
    .INIT(16'h4555)) 
    \dc_bias[3]_i_2__0 
       (.I0(\dc_bias[3]_i_5__0_n_0 ),
        .I1(\dc_bias[0]_i_3_n_0 ),
        .I2(\dc_bias[3]_i_6__1_n_0 ),
        .I3(\dc_bias[3]_i_7__0_n_0 ),
        .O(\dc_bias[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \dc_bias[3]_i_5__0 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias_reg_n_0_[2] ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(p_1_in),
        .O(\dc_bias[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hF96F60F606909F09)) 
    \dc_bias[3]_i_6__1 
       (.I0(vgaGreen[3]),
        .I1(vgaGreen[1]),
        .I2(\dc_bias[0]_i_8_n_0 ),
        .I3(\encoded[7]_i_2__1_n_0 ),
        .I4(vgaGreen[0]),
        .I5(\dc_bias[3]_i_12__0_n_0 ),
        .O(\dc_bias[3]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h77E7717771771171)) 
    \dc_bias[3]_i_7__0 
       (.I0(\dc_bias[2]_i_18_n_0 ),
        .I1(\dc_bias[2]_i_17_n_0 ),
        .I2(vgaGreen[0]),
        .I3(\encoded[7]_i_2__1_n_0 ),
        .I4(\dc_bias[0]_i_8_n_0 ),
        .I5(\dc_bias[3]_i_13__0_n_0 ),
        .O(\dc_bias[3]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hDB24)) 
    \dc_bias[3]_i_8__0 
       (.I0(\dc_bias[2]_i_21_n_0 ),
        .I1(\dc_bias_reg_n_0_[2] ),
        .I2(\dc_bias[3]_i_14__0_n_0 ),
        .I3(p_1_in),
        .O(\dc_bias[3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A995A9959595)) 
    \dc_bias[3]_i_9__0 
       (.I0(\dc_bias[2]_i_5__0_n_0 ),
        .I1(\dc_bias[3]_i_7__0_n_0 ),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias[3]_i_6__1_n_0 ),
        .I4(\dc_bias_reg_n_0_[1] ),
        .I5(\dc_bias[1]_i_5__1_n_0 ),
        .O(\dc_bias[3]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[0] ),
        .R(blank));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[1]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[1] ),
        .R(blank));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(blank));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_i_1_n_0 ),
        .Q(p_1_in),
        .R(blank));
  MUXF8 \dc_bias_reg[3]_i_1 
       (.I0(\dc_bias_reg[3]_i_3_n_0 ),
        .I1(\dc_bias_reg[3]_i_4_n_0 ),
        .O(\dc_bias_reg[3]_i_1_n_0 ),
        .S(\dc_bias[3]_i_2__0_n_0 ));
  MUXF7 \dc_bias_reg[3]_i_3 
       (.I0(\dc_bias[3]_i_8__0_n_0 ),
        .I1(\dc_bias[3]_i_9__0_n_0 ),
        .O(\dc_bias_reg[3]_i_3_n_0 ),
        .S(\dc_bias[0]_i_2__0_n_0 ));
  MUXF7 \dc_bias_reg[3]_i_4 
       (.I0(\dc_bias[3]_i_10__0_n_0 ),
        .I1(\dc_bias[3]_i_11__0_n_0 ),
        .O(\dc_bias_reg[3]_i_4_n_0 ),
        .S(\dc_bias[2]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA656)) 
    \encoded[0]_i_1__1 
       (.I0(vgaGreen[0]),
        .I1(\dc_bias[0]_i_2__0_n_0 ),
        .I2(\dc_bias[3]_i_2__0_n_0 ),
        .I3(\dc_bias[2]_i_5__0_n_0 ),
        .O(\encoded[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h96666696)) 
    \encoded[1]_i_1__0 
       (.I0(vgaGreen[1]),
        .I1(vgaGreen[0]),
        .I2(\dc_bias[3]_i_2__0_n_0 ),
        .I3(\dc_bias[2]_i_5__0_n_0 ),
        .I4(\dc_bias[0]_i_2__0_n_0 ),
        .O(\encoded[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9696699669696996)) 
    \encoded[2]_i_1__0 
       (.I0(vgaGreen[1]),
        .I1(vgaGreen[0]),
        .I2(vgaGreen[2]),
        .I3(\dc_bias[0]_i_2__0_n_0 ),
        .I4(\dc_bias[3]_i_2__0_n_0 ),
        .I5(\dc_bias[2]_i_5__0_n_0 ),
        .O(\encoded[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696966996)) 
    \encoded[3]_i_1 
       (.I0(\encoded[3]_i_2__0_n_0 ),
        .I1(vgaGreen[3]),
        .I2(vgaGreen[2]),
        .I3(\dc_bias[3]_i_2__0_n_0 ),
        .I4(\dc_bias[2]_i_5__0_n_0 ),
        .I5(\dc_bias[0]_i_2__0_n_0 ),
        .O(\encoded[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \encoded[3]_i_2__0 
       (.I0(vgaGreen[1]),
        .I1(vgaGreen[0]),
        .O(\encoded[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h59A9)) 
    \encoded[4]_i_1__0 
       (.I0(\encoded[5]_i_2__0_n_0 ),
        .I1(\dc_bias[0]_i_2__0_n_0 ),
        .I2(\dc_bias[3]_i_2__0_n_0 ),
        .I3(\dc_bias[2]_i_5__0_n_0 ),
        .O(\encoded[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h69999969)) 
    \encoded[5]_i_1__0 
       (.I0(\encoded[5]_i_2__0_n_0 ),
        .I1(vgaGreen[5]),
        .I2(\dc_bias[3]_i_2__0_n_0 ),
        .I3(\dc_bias[2]_i_5__0_n_0 ),
        .I4(\dc_bias[0]_i_2__0_n_0 ),
        .O(\encoded[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[5]_i_2__0 
       (.I0(vgaGreen[4]),
        .I1(vgaGreen[2]),
        .I2(vgaGreen[3]),
        .I3(vgaGreen[1]),
        .I4(vgaGreen[0]),
        .O(\encoded[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hD5DF7F75)) 
    \encoded[6]_i_1__0 
       (.I0(vgaDE),
        .I1(\dc_bias[2]_i_5__0_n_0 ),
        .I2(\dc_bias[3]_i_2__0_n_0 ),
        .I3(\dc_bias[0]_i_2__0_n_0 ),
        .I4(\encoded[6]_i_2_n_0 ),
        .O(\encoded[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \encoded[6]_i_2 
       (.I0(vgaGreen[6]),
        .I1(vgaGreen[5]),
        .I2(\encoded[5]_i_2__0_n_0 ),
        .O(\encoded[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h748B0000)) 
    \encoded[7]_i_1__1 
       (.I0(\dc_bias[2]_i_5__0_n_0 ),
        .I1(\dc_bias[3]_i_2__0_n_0 ),
        .I2(\dc_bias[0]_i_2__0_n_0 ),
        .I3(\encoded[7]_i_2__1_n_0 ),
        .I4(vgaDE),
        .O(\encoded[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \encoded[7]_i_2__1 
       (.I0(vgaGreen[6]),
        .I1(vgaGreen[5]),
        .I2(\encoded[5]_i_2__0_n_0 ),
        .I3(vgaGreen[7]),
        .I4(\dc_bias[0]_i_2__0_n_0 ),
        .O(\encoded[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \encoded[8]_i_1 
       (.I0(vgaDE),
        .I1(\dc_bias[0]_i_2__0_n_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F4F)) 
    \encoded[9]_i_1 
       (.I0(\dc_bias[2]_i_5__0_n_0 ),
        .I1(\dc_bias[3]_i_2__0_n_0 ),
        .I2(vgaDE),
        .I3(\dc_bias[0]_i_2__0_n_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[0]_i_1__1_n_0 ),
        .Q(D[0]),
        .R(blank));
  FDRE \encoded_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[1]_i_1__0_n_0 ),
        .Q(D[1]),
        .R(blank));
  FDSE \encoded_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[2]_i_1__0_n_0 ),
        .Q(D[2]),
        .S(blank));
  FDRE \encoded_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(blank));
  FDSE \encoded_reg[4] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[4]_i_1__0_n_0 ),
        .Q(D[4]),
        .S(blank));
  FDRE \encoded_reg[5] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[5]_i_1__0_n_0 ),
        .Q(D[5]),
        .R(blank));
  FDRE \encoded_reg[6] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[6]_i_1__0_n_0 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \encoded_reg[7] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[7]_i_1__1_n_0 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TDMS_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1
   (blank,
    D,
    vgaDE,
    vgaRed,
    pixelClk);
  output blank;
  output [9:0]D;
  input vgaDE;
  input [7:0]vgaRed;
  input pixelClk;

  wire [9:0]D;
  wire blank;
  wire \dc_bias[0]_i_1_n_0 ;
  wire \dc_bias[0]_i_2_n_0 ;
  wire \dc_bias[0]_i_3__0_n_0 ;
  wire \dc_bias[0]_i_4__1_n_0 ;
  wire \dc_bias[0]_i_5__0_n_0 ;
  wire \dc_bias[0]_i_6_n_0 ;
  wire \dc_bias[1]_i_10_n_0 ;
  wire \dc_bias[1]_i_11_n_0 ;
  wire \dc_bias[1]_i_1_n_0 ;
  wire \dc_bias[1]_i_2_n_0 ;
  wire \dc_bias[1]_i_3_n_0 ;
  wire \dc_bias[1]_i_4_n_0 ;
  wire \dc_bias[1]_i_5_n_0 ;
  wire \dc_bias[1]_i_6__1_n_0 ;
  wire \dc_bias[1]_i_7__1_n_0 ;
  wire \dc_bias[1]_i_8_n_0 ;
  wire \dc_bias[1]_i_9_n_0 ;
  wire \dc_bias[2]_i_10_n_0 ;
  wire \dc_bias[2]_i_11_n_0 ;
  wire \dc_bias[2]_i_1_n_0 ;
  wire \dc_bias[2]_i_2_n_0 ;
  wire \dc_bias[2]_i_3_n_0 ;
  wire \dc_bias[2]_i_4_n_0 ;
  wire \dc_bias[2]_i_5_n_0 ;
  wire \dc_bias[2]_i_6_n_0 ;
  wire \dc_bias[2]_i_7_n_0 ;
  wire \dc_bias[2]_i_8_n_0 ;
  wire \dc_bias[2]_i_9_n_0 ;
  wire \dc_bias[3]_i_10_n_0 ;
  wire \dc_bias[3]_i_11_n_0 ;
  wire \dc_bias[3]_i_12_n_0 ;
  wire \dc_bias[3]_i_13_n_0 ;
  wire \dc_bias[3]_i_14_n_0 ;
  wire \dc_bias[3]_i_15_n_0 ;
  wire \dc_bias[3]_i_16_n_0 ;
  wire \dc_bias[3]_i_17__0_n_0 ;
  wire \dc_bias[3]_i_18_n_0 ;
  wire \dc_bias[3]_i_19_n_0 ;
  wire \dc_bias[3]_i_20_n_0 ;
  wire \dc_bias[3]_i_21_n_0 ;
  wire \dc_bias[3]_i_22__1_n_0 ;
  wire \dc_bias[3]_i_23_n_0 ;
  wire \dc_bias[3]_i_24_n_0 ;
  wire \dc_bias[3]_i_25_n_0 ;
  wire \dc_bias[3]_i_26_n_0 ;
  wire \dc_bias[3]_i_27_n_0 ;
  wire \dc_bias[3]_i_28_n_0 ;
  wire \dc_bias[3]_i_29_n_0 ;
  wire \dc_bias[3]_i_2_n_0 ;
  wire \dc_bias[3]_i_30_n_0 ;
  wire \dc_bias[3]_i_3_n_0 ;
  wire \dc_bias[3]_i_4_n_0 ;
  wire \dc_bias[3]_i_5_n_0 ;
  wire \dc_bias[3]_i_6__0_n_0 ;
  wire \dc_bias[3]_i_7_n_0 ;
  wire \dc_bias[3]_i_8_n_0 ;
  wire \dc_bias[3]_i_9_n_0 ;
  wire \dc_bias_reg_n_0_[0] ;
  wire \dc_bias_reg_n_0_[1] ;
  wire \dc_bias_reg_n_0_[2] ;
  wire \encoded[0]_i_1__0_n_0 ;
  wire \encoded[1]_i_1_n_0 ;
  wire \encoded[2]_i_1_n_0 ;
  wire \encoded[3]_i_1__1_n_0 ;
  wire \encoded[3]_i_2_n_0 ;
  wire \encoded[3]_i_3_n_0 ;
  wire \encoded[3]_i_4_n_0 ;
  wire \encoded[3]_i_5_n_0 ;
  wire \encoded[3]_i_6_n_0 ;
  wire \encoded[3]_i_7_n_0 ;
  wire \encoded[4]_i_1_n_0 ;
  wire \encoded[5]_i_1_n_0 ;
  wire \encoded[5]_i_2_n_0 ;
  wire \encoded[6]_i_1_n_0 ;
  wire \encoded[7]_i_1__0_n_0 ;
  wire \encoded[7]_i_2_n_0 ;
  wire \encoded[7]_i_3_n_0 ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire p_1_in;
  wire pixelClk;
  wire vgaDE;
  wire [7:0]vgaRed;

  LUT6 #(
    .INIT(64'h96FF9600960096FF)) 
    \dc_bias[0]_i_1 
       (.I0(\dc_bias[3]_i_6__0_n_0 ),
        .I1(\dc_bias[0]_i_2_n_0 ),
        .I2(\dc_bias[0]_i_3__0_n_0 ),
        .I3(\dc_bias[3]_i_7_n_0 ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .I5(\dc_bias[0]_i_4__1_n_0 ),
        .O(\dc_bias[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \dc_bias[0]_i_2 
       (.I0(\encoded[5]_i_2_n_0 ),
        .I1(vgaRed[0]),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(vgaRed[7]),
        .O(\dc_bias[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \dc_bias[0]_i_3__0 
       (.I0(vgaRed[2]),
        .I1(\encoded[3]_i_3_n_0 ),
        .O(\dc_bias[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dc_bias[0]_i_4__1 
       (.I0(vgaRed[1]),
        .I1(vgaRed[3]),
        .I2(\encoded[7]_i_3_n_0 ),
        .I3(\dc_bias[0]_i_5__0_n_0 ),
        .O(\dc_bias[0]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \dc_bias[0]_i_5__0 
       (.I0(vgaRed[4]),
        .I1(\dc_bias[0]_i_6_n_0 ),
        .I2(vgaRed[2]),
        .I3(vgaRed[3]),
        .I4(vgaRed[6]),
        .I5(\encoded[3]_i_3_n_0 ),
        .O(\dc_bias[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[0]_i_6 
       (.I0(vgaRed[1]),
        .I1(vgaRed[0]),
        .O(\dc_bias[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dc_bias[1]_i_1 
       (.I0(\dc_bias[1]_i_2_n_0 ),
        .I1(\dc_bias[3]_i_6__0_n_0 ),
        .I2(\dc_bias[1]_i_3_n_0 ),
        .I3(\dc_bias[3]_i_7_n_0 ),
        .I4(\dc_bias[1]_i_4_n_0 ),
        .O(\dc_bias[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \dc_bias[1]_i_10 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias[0]_i_5__0_n_0 ),
        .I2(\encoded[7]_i_3_n_0 ),
        .I3(vgaRed[3]),
        .I4(vgaRed[1]),
        .O(\dc_bias[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h56956A56A96A95A9)) 
    \dc_bias[1]_i_11 
       (.I0(\dc_bias_reg_n_0_[1] ),
        .I1(\dc_bias[3]_i_25_n_0 ),
        .I2(vgaRed[0]),
        .I3(\encoded[7]_i_3_n_0 ),
        .I4(\dc_bias[0]_i_5__0_n_0 ),
        .I5(\dc_bias[3]_i_27_n_0 ),
        .O(\dc_bias[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h96666669)) 
    \dc_bias[1]_i_2 
       (.I0(\dc_bias[2]_i_6_n_0 ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\encoded[3]_i_3_n_0 ),
        .I3(\dc_bias[0]_i_4__1_n_0 ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A565695A96A6A56)) 
    \dc_bias[1]_i_3 
       (.I0(\dc_bias[2]_i_8_n_0 ),
        .I1(\encoded[5]_i_2_n_0 ),
        .I2(vgaRed[7]),
        .I3(\dc_bias[1]_i_5_n_0 ),
        .I4(\dc_bias[1]_i_6__1_n_0 ),
        .I5(\dc_bias[1]_i_7__1_n_0 ),
        .O(\dc_bias[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h690069FF69FF6900)) 
    \dc_bias[1]_i_4 
       (.I0(\dc_bias[1]_i_8_n_0 ),
        .I1(\dc_bias[1]_i_9_n_0 ),
        .I2(\dc_bias[3]_i_19_n_0 ),
        .I3(\encoded[3]_i_3_n_0 ),
        .I4(\dc_bias[1]_i_10_n_0 ),
        .I5(\dc_bias[1]_i_11_n_0 ),
        .O(\dc_bias[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[1]_i_5 
       (.I0(vgaRed[0]),
        .I1(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[1]_i_6__1 
       (.I0(vgaRed[0]),
        .I1(vgaRed[1]),
        .I2(\encoded[3]_i_3_n_0 ),
        .O(\dc_bias[1]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[1]_i_7__1 
       (.I0(vgaRed[2]),
        .I1(vgaRed[0]),
        .I2(vgaRed[1]),
        .O(\dc_bias[1]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h8B2EE2B8E2B88B2E)) 
    \dc_bias[1]_i_8 
       (.I0(\dc_bias[0]_i_5__0_n_0 ),
        .I1(vgaRed[1]),
        .I2(vgaRed[0]),
        .I3(vgaRed[3]),
        .I4(\encoded[7]_i_3_n_0 ),
        .I5(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h599AA665)) 
    \dc_bias[1]_i_9 
       (.I0(\dc_bias[3]_i_20_n_0 ),
        .I1(\encoded[7]_i_3_n_0 ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(vgaRed[0]),
        .I4(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \dc_bias[2]_i_1 
       (.I0(\dc_bias[2]_i_2_n_0 ),
        .I1(\dc_bias[3]_i_6__0_n_0 ),
        .I2(\dc_bias[2]_i_3_n_0 ),
        .I3(\dc_bias[3]_i_7_n_0 ),
        .I4(\dc_bias[2]_i_4_n_0 ),
        .O(\dc_bias[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \dc_bias[2]_i_10 
       (.I0(\dc_bias[1]_i_6__1_n_0 ),
        .I1(\dc_bias[1]_i_7__1_n_0 ),
        .I2(vgaRed[7]),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaRed[0]),
        .I5(\encoded[5]_i_2_n_0 ),
        .O(\dc_bias[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA6656565A6A6A665)) 
    \dc_bias[2]_i_11 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias[3]_i_20_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaRed[0]),
        .I5(\encoded[7]_i_3_n_0 ),
        .O(\dc_bias[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFE017F80807FFE01)) 
    \dc_bias[2]_i_2 
       (.I0(\dc_bias[0]_i_4__1_n_0 ),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(\encoded[3]_i_3_n_0 ),
        .I3(\dc_bias[2]_i_5_n_0 ),
        .I4(\dc_bias[2]_i_6_n_0 ),
        .I5(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000024B2DB4D)) 
    \dc_bias[2]_i_3 
       (.I0(\dc_bias[2]_i_7_n_0 ),
        .I1(\dc_bias[2]_i_8_n_0 ),
        .I2(\dc_bias[2]_i_9_n_0 ),
        .I3(\dc_bias[2]_i_10_n_0 ),
        .I4(\dc_bias[3]_i_13_n_0 ),
        .I5(\dc_bias[3]_i_6__0_n_0 ),
        .O(\dc_bias[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h909F9F90)) 
    \dc_bias[2]_i_4 
       (.I0(\dc_bias[3]_i_10_n_0 ),
        .I1(\dc_bias[2]_i_11_n_0 ),
        .I2(\encoded[3]_i_3_n_0 ),
        .I3(\dc_bias[3]_i_12_n_0 ),
        .I4(\dc_bias[2]_i_5_n_0 ),
        .O(\dc_bias[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[2]_i_5 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias[3]_i_11_n_0 ),
        .O(\dc_bias[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h09906F09F66F90F6)) 
    \dc_bias[2]_i_6 
       (.I0(vgaRed[3]),
        .I1(vgaRed[1]),
        .I2(vgaRed[0]),
        .I3(\encoded[7]_i_3_n_0 ),
        .I4(\dc_bias[0]_i_5__0_n_0 ),
        .I5(\dc_bias[3]_i_27_n_0 ),
        .O(\dc_bias[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[2]_i_7 
       (.I0(vgaRed[2]),
        .I1(\encoded[3]_i_3_n_0 ),
        .I2(vgaRed[1]),
        .I3(vgaRed[0]),
        .O(\dc_bias[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \dc_bias[2]_i_8 
       (.I0(\dc_bias[3]_i_28_n_0 ),
        .I1(\dc_bias[3]_i_29_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaRed[0]),
        .O(\dc_bias[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hE88E)) 
    \dc_bias[2]_i_9 
       (.I0(\encoded[5]_i_2_n_0 ),
        .I1(vgaRed[7]),
        .I2(vgaRed[0]),
        .I3(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[2]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dc_bias[3]_i_1 
       (.I0(vgaDE),
        .O(blank));
  LUT3 #(
    .INIT(8'h2B)) 
    \dc_bias[3]_i_10 
       (.I0(\dc_bias[3]_i_19_n_0 ),
        .I1(\dc_bias[1]_i_8_n_0 ),
        .I2(\dc_bias[1]_i_9_n_0 ),
        .O(\dc_bias[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h77E7717771771171)) 
    \dc_bias[3]_i_11 
       (.I0(\dc_bias[3]_i_20_n_0 ),
        .I1(\dc_bias[3]_i_19_n_0 ),
        .I2(\dc_bias[0]_i_5__0_n_0 ),
        .I3(\encoded[7]_i_3_n_0 ),
        .I4(vgaRed[0]),
        .I5(\dc_bias[3]_i_25_n_0 ),
        .O(\dc_bias[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCEEFF88CF88CCEEF)) 
    \dc_bias[3]_i_12 
       (.I0(\dc_bias_reg_n_0_[0] ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\dc_bias[3]_i_25_n_0 ),
        .I3(\dc_bias[3]_i_26_n_0 ),
        .I4(\dc_bias[3]_i_18_n_0 ),
        .I5(\dc_bias[3]_i_27_n_0 ),
        .O(\dc_bias[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hD44242422BBDBDBD)) 
    \dc_bias[3]_i_13 
       (.I0(\dc_bias[3]_i_28_n_0 ),
        .I1(\dc_bias[3]_i_29_n_0 ),
        .I2(\dc_bias_reg_n_0_[1] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(vgaRed[0]),
        .I5(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h02000000BF2B2B02)) 
    \dc_bias[3]_i_14 
       (.I0(\dc_bias[1]_i_7__1_n_0 ),
        .I1(\dc_bias[1]_i_6__1_n_0 ),
        .I2(\dc_bias[1]_i_5_n_0 ),
        .I3(vgaRed[7]),
        .I4(\encoded[5]_i_2_n_0 ),
        .I5(\dc_bias[2]_i_8_n_0 ),
        .O(\dc_bias[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4224FFFFFFFFFFFF)) 
    \dc_bias[3]_i_15 
       (.I0(vgaRed[2]),
        .I1(\encoded[3]_i_3_n_0 ),
        .I2(vgaRed[1]),
        .I3(vgaRed[0]),
        .I4(\dc_bias[2]_i_8_n_0 ),
        .I5(\dc_bias[3]_i_30_n_0 ),
        .O(\dc_bias[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEFAEAE8AAE8AAE8A)) 
    \dc_bias[3]_i_16 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias[3]_i_29_n_0 ),
        .I2(\dc_bias[3]_i_28_n_0 ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .I5(vgaRed[0]),
        .O(\dc_bias[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h60090690)) 
    \dc_bias[3]_i_17__0 
       (.I0(\encoded[7]_i_3_n_0 ),
        .I1(\dc_bias[0]_i_5__0_n_0 ),
        .I2(vgaRed[1]),
        .I3(vgaRed[0]),
        .I4(vgaRed[3]),
        .O(\dc_bias[3]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \dc_bias[3]_i_18 
       (.I0(vgaRed[0]),
        .I1(\encoded[7]_i_3_n_0 ),
        .I2(\dc_bias[0]_i_5__0_n_0 ),
        .O(\dc_bias[3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \dc_bias[3]_i_19 
       (.I0(vgaRed[2]),
        .I1(vgaRed[3]),
        .I2(\encoded[3]_i_3_n_0 ),
        .I3(vgaRed[1]),
        .I4(vgaRed[0]),
        .O(\dc_bias[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000FEEEEFFFFEEEE)) 
    \dc_bias[3]_i_2 
       (.I0(\dc_bias[3]_i_3_n_0 ),
        .I1(\dc_bias[3]_i_4_n_0 ),
        .I2(\dc_bias[3]_i_5_n_0 ),
        .I3(\dc_bias[3]_i_6__0_n_0 ),
        .I4(\dc_bias[3]_i_7_n_0 ),
        .I5(\dc_bias[3]_i_8_n_0 ),
        .O(\dc_bias[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hC39669C3)) 
    \dc_bias[3]_i_20 
       (.I0(\encoded[3]_i_3_n_0 ),
        .I1(vgaRed[4]),
        .I2(\encoded[3]_i_2_n_0 ),
        .I3(vgaRed[5]),
        .I4(vgaRed[6]),
        .O(\dc_bias[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0800618661860010)) 
    \dc_bias[3]_i_21 
       (.I0(\dc_bias[3]_i_25_n_0 ),
        .I1(vgaRed[0]),
        .I2(\encoded[7]_i_3_n_0 ),
        .I3(\dc_bias[0]_i_5__0_n_0 ),
        .I4(\dc_bias[3]_i_19_n_0 ),
        .I5(\dc_bias[3]_i_20_n_0 ),
        .O(\dc_bias[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h596565A6FFFFFFFF)) 
    \dc_bias[3]_i_22__1 
       (.I0(\dc_bias[3]_i_27_n_0 ),
        .I1(\dc_bias[0]_i_5__0_n_0 ),
        .I2(\encoded[7]_i_3_n_0 ),
        .I3(vgaRed[0]),
        .I4(\dc_bias[3]_i_25_n_0 ),
        .I5(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[3]_i_22__1_n_0 ));
  LUT6 #(
    .INIT(64'hE00E0EE00EE0E00E)) 
    \dc_bias[3]_i_23 
       (.I0(\dc_bias[1]_i_10_n_0 ),
        .I1(\encoded[3]_i_3_n_0 ),
        .I2(\dc_bias[3]_i_27_n_0 ),
        .I3(\dc_bias[3]_i_18_n_0 ),
        .I4(\dc_bias[3]_i_17__0_n_0 ),
        .I5(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \dc_bias[3]_i_24 
       (.I0(\dc_bias[0]_i_4__1_n_0 ),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(\encoded[3]_i_3_n_0 ),
        .O(\dc_bias[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[3]_i_25 
       (.I0(vgaRed[3]),
        .I1(vgaRed[0]),
        .I2(vgaRed[1]),
        .O(\dc_bias[3]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[3]_i_26 
       (.I0(\dc_bias[0]_i_5__0_n_0 ),
        .I1(\encoded[7]_i_3_n_0 ),
        .I2(vgaRed[0]),
        .O(\dc_bias[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h6999666996669996)) 
    \dc_bias[3]_i_27 
       (.I0(vgaRed[0]),
        .I1(vgaRed[1]),
        .I2(\encoded[3]_i_3_n_0 ),
        .I3(vgaRed[3]),
        .I4(vgaRed[2]),
        .I5(\dc_bias[3]_i_20_n_0 ),
        .O(\dc_bias[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4BB4B44BD22D2DD2)) 
    \dc_bias[3]_i_28 
       (.I0(\encoded[3]_i_3_n_0 ),
        .I1(vgaRed[4]),
        .I2(vgaRed[3]),
        .I3(vgaRed[2]),
        .I4(\dc_bias[0]_i_6_n_0 ),
        .I5(vgaRed[5]),
        .O(\dc_bias[3]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h8EE8E88E)) 
    \dc_bias[3]_i_29 
       (.I0(\encoded[3]_i_3_n_0 ),
        .I1(vgaRed[7]),
        .I2(vgaRed[4]),
        .I3(\encoded[5]_i_2_n_0 ),
        .I4(vgaRed[6]),
        .O(\dc_bias[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h82888828)) 
    \dc_bias[3]_i_3 
       (.I0(\encoded[3]_i_3_n_0 ),
        .I1(p_1_in),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias[3]_i_9_n_0 ),
        .I4(\dc_bias[3]_i_10_n_0 ),
        .O(\dc_bias[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000660)) 
    \dc_bias[3]_i_30 
       (.I0(\dc_bias[1]_i_7__1_n_0 ),
        .I1(\dc_bias[1]_i_6__1_n_0 ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(vgaRed[0]),
        .I4(vgaRed[7]),
        .I5(\encoded[5]_i_2_n_0 ),
        .O(\dc_bias[3]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h01155440)) 
    \dc_bias[3]_i_4 
       (.I0(\encoded[3]_i_3_n_0 ),
        .I1(\dc_bias_reg_n_0_[2] ),
        .I2(\dc_bias[3]_i_11_n_0 ),
        .I3(\dc_bias[3]_i_12_n_0 ),
        .I4(\dc_bias[3]_i_6__0_n_0 ),
        .O(\dc_bias[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2FD0D02F)) 
    \dc_bias[3]_i_5 
       (.I0(\dc_bias[3]_i_13_n_0 ),
        .I1(\dc_bias[3]_i_14_n_0 ),
        .I2(\dc_bias[3]_i_15_n_0 ),
        .I3(\dc_bias[3]_i_16_n_0 ),
        .I4(p_1_in),
        .O(\dc_bias[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6A565655)) 
    \dc_bias[3]_i_6__0 
       (.I0(p_1_in),
        .I1(\dc_bias[3]_i_17__0_n_0 ),
        .I2(\dc_bias[3]_i_18_n_0 ),
        .I3(\dc_bias[3]_i_19_n_0 ),
        .I4(\dc_bias[3]_i_20_n_0 ),
        .O(\dc_bias[3]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \dc_bias[3]_i_7 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias[3]_i_21_n_0 ),
        .O(\dc_bias[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFD7FD5FDFD7FFD7F)) 
    \dc_bias[3]_i_8 
       (.I0(\dc_bias[3]_i_6__0_n_0 ),
        .I1(\dc_bias[3]_i_11_n_0 ),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias[3]_i_22__1_n_0 ),
        .I4(\dc_bias[3]_i_23_n_0 ),
        .I5(\dc_bias[3]_i_24_n_0 ),
        .O(\dc_bias[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h2BFF002B)) 
    \dc_bias[3]_i_9 
       (.I0(\encoded[7]_i_3_n_0 ),
        .I1(vgaRed[0]),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias[3]_i_20_n_0 ),
        .O(\dc_bias[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[0] ),
        .R(blank));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[1]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[1] ),
        .R(blank));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(blank));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\dc_bias[3]_i_2_n_0 ),
        .Q(p_1_in),
        .R(blank));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \encoded[0]_i_1__0 
       (.I0(vgaRed[0]),
        .I1(\encoded[7]_i_2_n_0 ),
        .O(\encoded[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h96666696)) 
    \encoded[1]_i_1 
       (.I0(vgaRed[1]),
        .I1(vgaRed[0]),
        .I2(\dc_bias[3]_i_7_n_0 ),
        .I3(\dc_bias[3]_i_6__0_n_0 ),
        .I4(\encoded[3]_i_3_n_0 ),
        .O(\encoded[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \encoded[2]_i_1 
       (.I0(vgaRed[1]),
        .I1(vgaRed[0]),
        .I2(vgaRed[2]),
        .I3(\encoded[7]_i_2_n_0 ),
        .O(\encoded[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h6AA60000)) 
    \encoded[3]_i_1__1 
       (.I0(\encoded[3]_i_2_n_0 ),
        .I1(\dc_bias[3]_i_7_n_0 ),
        .I2(\dc_bias[3]_i_6__0_n_0 ),
        .I3(\encoded[3]_i_3_n_0 ),
        .I4(vgaDE),
        .O(\encoded[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \encoded[3]_i_2 
       (.I0(vgaRed[3]),
        .I1(vgaRed[2]),
        .I2(vgaRed[0]),
        .I3(vgaRed[1]),
        .O(\encoded[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5DD50445D55D0445)) 
    \encoded[3]_i_3 
       (.I0(\encoded[3]_i_4_n_0 ),
        .I1(\encoded[3]_i_5_n_0 ),
        .I2(vgaRed[7]),
        .I3(\encoded[3]_i_6_n_0 ),
        .I4(\encoded[3]_i_7_n_0 ),
        .I5(vgaRed[0]),
        .O(\encoded[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \encoded[3]_i_4 
       (.I0(vgaRed[1]),
        .I1(vgaRed[3]),
        .I2(vgaRed[2]),
        .I3(vgaRed[4]),
        .I4(vgaRed[6]),
        .I5(vgaRed[5]),
        .O(\encoded[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \encoded[3]_i_5 
       (.I0(vgaRed[1]),
        .I1(vgaRed[3]),
        .I2(vgaRed[2]),
        .O(\encoded[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \encoded[3]_i_6 
       (.I0(vgaRed[6]),
        .I1(vgaRed[5]),
        .I2(vgaRed[4]),
        .O(\encoded[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000001700171717)) 
    \encoded[3]_i_7 
       (.I0(vgaRed[1]),
        .I1(vgaRed[3]),
        .I2(vgaRed[2]),
        .I3(vgaRed[4]),
        .I4(vgaRed[6]),
        .I5(vgaRed[5]),
        .O(\encoded[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \encoded[4]_i_1 
       (.I0(vgaRed[3]),
        .I1(vgaRed[2]),
        .I2(vgaRed[0]),
        .I3(vgaRed[1]),
        .I4(vgaRed[4]),
        .I5(\encoded[7]_i_2_n_0 ),
        .O(\encoded[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h69999969)) 
    \encoded[5]_i_1 
       (.I0(\encoded[5]_i_2_n_0 ),
        .I1(vgaRed[4]),
        .I2(\dc_bias[3]_i_7_n_0 ),
        .I3(\dc_bias[3]_i_6__0_n_0 ),
        .I4(\encoded[3]_i_3_n_0 ),
        .O(\encoded[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[5]_i_2 
       (.I0(vgaRed[5]),
        .I1(vgaRed[1]),
        .I2(vgaRed[0]),
        .I3(vgaRed[2]),
        .I4(vgaRed[3]),
        .O(\encoded[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \encoded[6]_i_1 
       (.I0(vgaRed[4]),
        .I1(\encoded[5]_i_2_n_0 ),
        .I2(vgaRed[6]),
        .I3(\encoded[7]_i_2_n_0 ),
        .O(\encoded[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \encoded[7]_i_1__0 
       (.I0(\encoded[7]_i_2_n_0 ),
        .I1(\encoded[7]_i_3_n_0 ),
        .I2(vgaDE),
        .O(\encoded[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \encoded[7]_i_2 
       (.I0(\dc_bias[3]_i_6__0_n_0 ),
        .I1(\dc_bias[3]_i_7_n_0 ),
        .I2(\encoded[3]_i_3_n_0 ),
        .O(\encoded[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[7]_i_3 
       (.I0(vgaRed[6]),
        .I1(\encoded[5]_i_2_n_0 ),
        .I2(vgaRed[4]),
        .I3(vgaRed[7]),
        .I4(\encoded[3]_i_3_n_0 ),
        .O(\encoded[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \encoded[8]_i_1 
       (.I0(vgaDE),
        .I1(\encoded[3]_i_3_n_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8FBF)) 
    \encoded[9]_i_1 
       (.I0(\dc_bias[3]_i_6__0_n_0 ),
        .I1(\dc_bias[3]_i_7_n_0 ),
        .I2(vgaDE),
        .I3(\encoded[3]_i_3_n_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[0]_i_1__0_n_0 ),
        .Q(D[0]),
        .R(blank));
  FDRE \encoded_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(blank));
  FDSE \encoded_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[2]_i_1_n_0 ),
        .Q(D[2]),
        .S(blank));
  FDRE \encoded_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[3]_i_1__1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  FDSE \encoded_reg[4] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[4]_i_1_n_0 ),
        .Q(D[4]),
        .S(blank));
  FDRE \encoded_reg[5] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(blank));
  FDSE \encoded_reg[6] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[6]_i_1_n_0 ),
        .Q(D[6]),
        .S(blank));
  FDRE \encoded_reg[7] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[7]_i_1__0_n_0 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid
   (hdmiEncodedData_2,
    hdmiEncodedData_1,
    I,
    hdmiPixelClock,
    pixelClkx5,
    pixelClkx5Ps,
    vgaDE,
    vgaRed,
    vgaGreen,
    vgaBlue,
    pixelClk,
    vgaVS,
    vgaHS);
  output hdmiEncodedData_2;
  output hdmiEncodedData_1;
  output I;
  output hdmiPixelClock;
  input pixelClkx5;
  input pixelClkx5Ps;
  input vgaDE;
  input [7:0]vgaRed;
  input [7:0]vgaGreen;
  input [7:0]vgaBlue;
  input pixelClk;
  input vgaVS;
  input vgaHS;

  wire D0;
  wire D1;
  wire I;
  wire TDMS_encoder_blue_n_0;
  wire TDMS_encoder_blue_n_1;
  wire TDMS_encoder_blue_n_2;
  wire TDMS_encoder_blue_n_3;
  wire TDMS_encoder_blue_n_4;
  wire TDMS_encoder_blue_n_5;
  wire TDMS_encoder_blue_n_6;
  wire TDMS_encoder_blue_n_7;
  wire TDMS_encoder_blue_n_8;
  wire TDMS_encoder_blue_n_9;
  wire TDMS_encoder_green_n_0;
  wire TDMS_encoder_green_n_1;
  wire TDMS_encoder_green_n_2;
  wire TDMS_encoder_green_n_3;
  wire TDMS_encoder_green_n_4;
  wire TDMS_encoder_green_n_5;
  wire TDMS_encoder_green_n_6;
  wire TDMS_encoder_green_n_7;
  wire TDMS_encoder_green_n_8;
  wire TDMS_encoder_green_n_9;
  wire TDMS_encoder_red_n_1;
  wire TDMS_encoder_red_n_10;
  wire TDMS_encoder_red_n_2;
  wire TDMS_encoder_red_n_3;
  wire TDMS_encoder_red_n_4;
  wire TDMS_encoder_red_n_5;
  wire TDMS_encoder_red_n_6;
  wire TDMS_encoder_red_n_7;
  wire TDMS_encoder_red_n_8;
  wire TDMS_encoder_red_n_9;
  wire blank;
  wire [7:0]data1;
  wire hdmiEncodedData_1;
  wire hdmiEncodedData_2;
  wire hdmiPixelClock;
  wire [9:0]latched_blue;
  wire [9:0]latched_green;
  wire [9:0]latched_red;
  wire pixelClk;
  wire pixelClkx5;
  wire pixelClkx5Ps;
  wire [9:2]shift_blue;
  wire [7:0]shift_blue_0;
  wire \shift_blue_reg_n_0_[0] ;
  wire \shift_blue_reg_n_0_[1] ;
  wire [1:0]shift_clock;
  wire \shift_clock_reg_n_0_[2] ;
  wire \shift_clock_reg_n_0_[3] ;
  wire \shift_clock_reg_n_0_[4] ;
  wire \shift_clock_reg_n_0_[5] ;
  wire \shift_clock_reg_n_0_[6] ;
  wire \shift_clock_reg_n_0_[7] ;
  wire \shift_clock_reg_n_0_[8] ;
  wire \shift_clock_reg_n_0_[9] ;
  wire [9:2]shift_green;
  wire [7:0]shift_green_1;
  wire \shift_green_reg_n_0_[0] ;
  wire \shift_green_reg_n_0_[1] ;
  wire [7:0]shift_red;
  wire \shift_red[9]_i_1_n_0 ;
  wire \shift_red[9]_i_2_n_0 ;
  wire [7:0]vgaBlue;
  wire vgaDE;
  wire [7:0]vgaGreen;
  wire vgaHS;
  wire [7:0]vgaRed;
  wire vgaVS;
  wire NLW_ODDR2_blue_R_UNCONNECTED;
  wire NLW_ODDR2_blue_S_UNCONNECTED;
  wire NLW_ODDR2_clock_R_UNCONNECTED;
  wire NLW_ODDR2_clock_S_UNCONNECTED;
  wire NLW_ODDR2_green_R_UNCONNECTED;
  wire NLW_ODDR2_green_S_UNCONNECTED;
  wire NLW_ODDR2_red_R_UNCONNECTED;
  wire NLW_ODDR2_red_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_blue
       (.C(pixelClkx5),
        .CE(1'b1),
        .D1(\shift_blue_reg_n_0_[0] ),
        .D2(\shift_blue_reg_n_0_[1] ),
        .Q(I),
        .R(NLW_ODDR2_blue_R_UNCONNECTED),
        .S(NLW_ODDR2_blue_S_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_clock
       (.C(pixelClkx5),
        .CE(1'b1),
        .D1(shift_clock[0]),
        .D2(shift_clock[1]),
        .Q(hdmiPixelClock),
        .R(NLW_ODDR2_clock_R_UNCONNECTED),
        .S(NLW_ODDR2_clock_S_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_green
       (.C(pixelClkx5),
        .CE(1'b1),
        .D1(\shift_green_reg_n_0_[0] ),
        .D2(\shift_green_reg_n_0_[1] ),
        .Q(hdmiEncodedData_1),
        .R(NLW_ODDR2_green_R_UNCONNECTED),
        .S(NLW_ODDR2_green_S_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_red
       (.C(pixelClkx5),
        .CE(1'b1),
        .D1(D0),
        .D2(D1),
        .Q(hdmiEncodedData_2),
        .R(NLW_ODDR2_red_R_UNCONNECTED),
        .S(NLW_ODDR2_red_S_UNCONNECTED));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder TDMS_encoder_blue
       (.D({TDMS_encoder_blue_n_0,TDMS_encoder_blue_n_1,TDMS_encoder_blue_n_2,TDMS_encoder_blue_n_3,TDMS_encoder_blue_n_4,TDMS_encoder_blue_n_5,TDMS_encoder_blue_n_6,TDMS_encoder_blue_n_7,TDMS_encoder_blue_n_8,TDMS_encoder_blue_n_9}),
        .blank(blank),
        .pixelClk(pixelClk),
        .vgaBlue(vgaBlue),
        .vgaDE(vgaDE),
        .vgaHS(vgaHS),
        .vgaVS(vgaVS));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 TDMS_encoder_green
       (.D({TDMS_encoder_green_n_0,TDMS_encoder_green_n_1,TDMS_encoder_green_n_2,TDMS_encoder_green_n_3,TDMS_encoder_green_n_4,TDMS_encoder_green_n_5,TDMS_encoder_green_n_6,TDMS_encoder_green_n_7,TDMS_encoder_green_n_8,TDMS_encoder_green_n_9}),
        .blank(blank),
        .pixelClk(pixelClk),
        .vgaDE(vgaDE),
        .vgaGreen(vgaGreen));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 TDMS_encoder_red
       (.D({TDMS_encoder_red_n_1,TDMS_encoder_red_n_2,TDMS_encoder_red_n_3,TDMS_encoder_red_n_4,TDMS_encoder_red_n_5,TDMS_encoder_red_n_6,TDMS_encoder_red_n_7,TDMS_encoder_red_n_8,TDMS_encoder_red_n_9,TDMS_encoder_red_n_10}),
        .blank(blank),
        .pixelClk(pixelClk),
        .vgaDE(vgaDE),
        .vgaRed(vgaRed));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_9),
        .Q(latched_blue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_8),
        .Q(latched_blue[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_7),
        .Q(latched_blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_6),
        .Q(latched_blue[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[4] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_5),
        .Q(latched_blue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[5] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_4),
        .Q(latched_blue[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[6] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_3),
        .Q(latched_blue[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[7] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_2),
        .Q(latched_blue[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[8] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_1),
        .Q(latched_blue[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[9] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_0),
        .Q(latched_blue[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_9),
        .Q(latched_green[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_8),
        .Q(latched_green[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_7),
        .Q(latched_green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_6),
        .Q(latched_green[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[4] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_5),
        .Q(latched_green[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[5] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_4),
        .Q(latched_green[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[6] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_3),
        .Q(latched_green[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[7] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_2),
        .Q(latched_green[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[8] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_1),
        .Q(latched_green[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[9] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_0),
        .Q(latched_green[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[0] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_10),
        .Q(latched_red[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[1] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_9),
        .Q(latched_red[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[2] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_8),
        .Q(latched_red[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[3] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_7),
        .Q(latched_red[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[4] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_6),
        .Q(latched_red[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[5] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_5),
        .Q(latched_red[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[6] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_4),
        .Q(latched_red[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[7] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_3),
        .Q(latched_red[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[8] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_2),
        .Q(latched_red[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[9] 
       (.C(pixelClk),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_1),
        .Q(latched_red[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[0]_i_1 
       (.I0(shift_blue[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[0]),
        .O(shift_blue_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[1]_i_1 
       (.I0(shift_blue[3]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[1]),
        .O(shift_blue_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[2]_i_1 
       (.I0(shift_blue[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[2]),
        .O(shift_blue_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[3]_i_1 
       (.I0(shift_blue[5]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[3]),
        .O(shift_blue_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[4]_i_1 
       (.I0(shift_blue[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[4]),
        .O(shift_blue_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[5]_i_1 
       (.I0(shift_blue[7]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[5]),
        .O(shift_blue_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[6]_i_1 
       (.I0(shift_blue[8]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[6]),
        .O(shift_blue_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[7]_i_1 
       (.I0(shift_blue[9]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[7]),
        .O(shift_blue_0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[0] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_blue_0[0]),
        .Q(\shift_blue_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[1] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_blue_0[1]),
        .Q(\shift_blue_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[2] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_blue_0[2]),
        .Q(shift_blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[3] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_blue_0[3]),
        .Q(shift_blue[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[4] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_blue_0[4]),
        .Q(shift_blue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[5] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_blue_0[5]),
        .Q(shift_blue[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[6] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_blue_0[6]),
        .Q(shift_blue[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[7] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_blue_0[7]),
        .Q(shift_blue[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[8] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(latched_blue[8]),
        .Q(shift_blue[8]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[9] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(latched_blue[9]),
        .Q(shift_blue[9]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[0] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[2] ),
        .Q(shift_clock[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[1] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[3] ),
        .Q(shift_clock[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[2] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[4] ),
        .Q(\shift_clock_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[3] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[5] ),
        .Q(\shift_clock_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[4] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[6] ),
        .Q(\shift_clock_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[5] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[7] ),
        .Q(\shift_clock_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[6] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[8] ),
        .Q(\shift_clock_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[7] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[9] ),
        .Q(\shift_clock_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[8] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_clock[0]),
        .Q(\shift_clock_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[9] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_clock[1]),
        .Q(\shift_clock_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[0]_i_1 
       (.I0(shift_green[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[0]),
        .O(shift_green_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[1]_i_1 
       (.I0(shift_green[3]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[1]),
        .O(shift_green_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[2]_i_1 
       (.I0(shift_green[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[2]),
        .O(shift_green_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[3]_i_1 
       (.I0(shift_green[5]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[3]),
        .O(shift_green_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[4]_i_1 
       (.I0(shift_green[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[4]),
        .O(shift_green_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[5]_i_1 
       (.I0(shift_green[7]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[5]),
        .O(shift_green_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[6]_i_1 
       (.I0(shift_green[8]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[6]),
        .O(shift_green_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[7]_i_1 
       (.I0(shift_green[9]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[7]),
        .O(shift_green_1[7]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[0] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_green_1[0]),
        .Q(\shift_green_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[1] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_green_1[1]),
        .Q(\shift_green_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[2] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_green_1[2]),
        .Q(shift_green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[3] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_green_1[3]),
        .Q(shift_green[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[4] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_green_1[4]),
        .Q(shift_green[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[5] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_green_1[5]),
        .Q(shift_green[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[6] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_green_1[6]),
        .Q(shift_green[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[7] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_green_1[7]),
        .Q(shift_green[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[8] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(latched_green[8]),
        .Q(shift_green[8]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[9] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(latched_green[9]),
        .Q(shift_green[9]),
        .R(\shift_red[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[0]_i_1 
       (.I0(data1[0]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[0]),
        .O(shift_red[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[1]_i_1 
       (.I0(data1[1]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[1]),
        .O(shift_red[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[2]_i_1 
       (.I0(data1[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[2]),
        .O(shift_red[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[3]_i_1 
       (.I0(data1[3]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[3]),
        .O(shift_red[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[4]_i_1 
       (.I0(data1[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[4]),
        .O(shift_red[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[5]_i_1 
       (.I0(data1[5]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[5]),
        .O(shift_red[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[6]_i_1 
       (.I0(data1[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[6]),
        .O(shift_red[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[7]_i_1 
       (.I0(data1[7]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[7]),
        .O(shift_red[7]));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \shift_red[9]_i_1 
       (.I0(\shift_red[9]_i_2_n_0 ),
        .I1(\shift_clock_reg_n_0_[5] ),
        .I2(\shift_clock_reg_n_0_[4] ),
        .I3(\shift_clock_reg_n_0_[2] ),
        .I4(\shift_clock_reg_n_0_[3] ),
        .O(\shift_red[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \shift_red[9]_i_2 
       (.I0(\shift_clock_reg_n_0_[8] ),
        .I1(\shift_clock_reg_n_0_[9] ),
        .I2(\shift_clock_reg_n_0_[6] ),
        .I3(\shift_clock_reg_n_0_[7] ),
        .I4(shift_clock[1]),
        .I5(shift_clock[0]),
        .O(\shift_red[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[0] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_red[0]),
        .Q(D0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[1] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_red[1]),
        .Q(D1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[2] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_red[2]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[3] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_red[3]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[4] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_red[4]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[5] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_red[5]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[6] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_red[6]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[7] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(shift_red[7]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[8] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(latched_red[8]),
        .Q(data1[6]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[9] 
       (.C(pixelClkx5),
        .CE(1'b1),
        .D(latched_red[9]),
        .Q(data1[7]),
        .R(\shift_red[9]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmiOut
   (hdmiDP,
    hdmiDN,
    hdmiClkP,
    hdmiClkN,
    vgaDE,
    vgaRed,
    vgaGreen,
    vgaBlue,
    pixelClkx5,
    pixelClkx5Ps,
    pixelClk,
    vgaVS,
    vgaHS);
  output [2:0]hdmiDP;
  output [2:0]hdmiDN;
  output hdmiClkP;
  output hdmiClkN;
  input vgaDE;
  input [7:0]vgaRed;
  input [7:0]vgaGreen;
  input [7:0]vgaBlue;
  input pixelClkx5;
  input pixelClkx5Ps;
  input pixelClk;
  input vgaVS;
  input vgaHS;

  wire I;
  wire hdmiClkN;
  wire hdmiClkP;
  wire [2:0]hdmiDN;
  wire [2:0]hdmiDP;
  wire hdmiEncodedData_1;
  wire hdmiEncodedData_2;
  wire hdmiPixelClock;
  wire pixelClk;
  wire pixelClkx5;
  wire pixelClkx5Ps;
  wire [7:0]vgaBlue;
  wire vgaDE;
  wire [7:0]vgaGreen;
  wire vgaHS;
  wire [7:0]vgaRed;
  wire vgaVS;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_blue
       (.I(I),
        .O(hdmiDP[0]),
        .OB(hdmiDN[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clock
       (.I(hdmiPixelClock),
        .O(hdmiClkP),
        .OB(hdmiClkN));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_green
       (.I(hdmiEncodedData_1),
        .O(hdmiDP[1]),
        .OB(hdmiDN[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_red
       (.I(hdmiEncodedData_2),
        .O(hdmiDP[2]),
        .OB(hdmiDN[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid dvidInst
       (.I(I),
        .hdmiEncodedData_1(hdmiEncodedData_1),
        .hdmiEncodedData_2(hdmiEncodedData_2),
        .hdmiPixelClock(hdmiPixelClock),
        .pixelClk(pixelClk),
        .pixelClkx5(pixelClkx5),
        .pixelClkx5Ps(pixelClkx5Ps),
        .vgaBlue(vgaBlue),
        .vgaDE(vgaDE),
        .vgaGreen(vgaGreen),
        .vgaHS(vgaHS),
        .vgaRed(vgaRed),
        .vgaVS(vgaVS));
endmodule

(* CHECK_LICENSE_TYPE = "tangerineA7_100_hdmiOut_0_0,hdmiOut,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hdmiOut,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (resetn,
    pixelClk,
    pixelClkx5,
    pixelClkx5Ps,
    vgaRed,
    vgaGreen,
    vgaBlue,
    vgaHS,
    vgaVS,
    vgaDE,
    hdmiClkP,
    hdmiClkN,
    hdmiDP,
    hdmiDN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input pixelClk;
  input pixelClkx5;
  input pixelClkx5Ps;
  input [7:0]vgaRed;
  input [7:0]vgaGreen;
  input [7:0]vgaBlue;
  input vgaHS;
  input vgaVS;
  input vgaDE;
  output hdmiClkP;
  output hdmiClkN;
  output [2:0]hdmiDP;
  output [2:0]hdmiDN;

  (* SLEW = "SLOW" *) wire hdmiClkN;
  (* SLEW = "SLOW" *) wire hdmiClkP;
  (* SLEW = "SLOW" *) wire [2:0]hdmiDN;
  (* SLEW = "SLOW" *) wire [2:0]hdmiDP;
  wire pixelClk;
  wire pixelClkx5;
  wire pixelClkx5Ps;
  wire [7:0]vgaBlue;
  wire vgaDE;
  wire [7:0]vgaGreen;
  wire vgaHS;
  wire [7:0]vgaRed;
  wire vgaVS;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmiOut inst
       (.hdmiClkN(hdmiClkN),
        .hdmiClkP(hdmiClkP),
        .hdmiDN(hdmiDN),
        .hdmiDP(hdmiDP),
        .pixelClk(pixelClk),
        .pixelClkx5(pixelClkx5),
        .pixelClkx5Ps(pixelClkx5Ps),
        .vgaBlue(vgaBlue),
        .vgaDE(vgaDE),
        .vgaGreen(vgaGreen),
        .vgaHS(vgaHS),
        .vgaRed(vgaRed),
        .vgaVS(vgaVS));
endmodule
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
