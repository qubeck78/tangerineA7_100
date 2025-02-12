// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Feb 11 11:34:27 2025
// Host        : DESKTOP-T3E75FC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ tangerineA7_100_hdmiOut_0_0_stub.v
// Design      : tangerineA7_100_hdmiOut_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdmiOut,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(resetn, pixelClk, pixelClkx5, pixelClkx5Ps, 
  vgaRed, vgaGreen, vgaBlue, vgaHS, vgaVS, vgaDE, hdmiClkP, hdmiClkN, hdmiDP, hdmiDN)
/* synthesis syn_black_box black_box_pad_pin="resetn,pixelClkx5Ps,vgaRed[7:0],vgaGreen[7:0],vgaBlue[7:0],vgaHS,vgaVS,vgaDE,hdmiClkP,hdmiClkN,hdmiDP[2:0],hdmiDN[2:0]" */
/* synthesis syn_force_seq_prim="pixelClk" */
/* synthesis syn_force_seq_prim="pixelClkx5" */;
  input resetn;
  input pixelClk /* synthesis syn_isclock = 1 */;
  input pixelClkx5 /* synthesis syn_isclock = 1 */;
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
endmodule
