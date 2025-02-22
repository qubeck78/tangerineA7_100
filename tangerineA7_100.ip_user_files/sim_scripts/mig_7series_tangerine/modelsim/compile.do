vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/mig_7series_tangerine_mig_sim.v" \
"../../../../tangerineA7_100.gen/sources_1/ip/mig_7series_tangerine/mig_7series_tangerine/user_design/rtl/mig_7series_tangerine.v" \

vlog -work xil_defaultlib \
"glbl.v"

