vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/gigantic_mux
vlib questa_lib/msim/xlconcat_v2_1_4

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap gigantic_mux questa_lib/msim/gigantic_mux
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_hdmiOut_0_0/sim/tangerineA7_100_hdmiOut_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0.v" \

vlog -work xlslice_v1_0_2  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlslice_0_0/sim/tangerineA7_100_xlslice_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlconstant_0_0/sim/tangerineA7_100_xlconstant_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_0/sim/bd_2af6_ila_lib_0.v" \

vlog -work gigantic_mux  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_1/bd_2af6_g_inst_0_gigantic_mux.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_1/sim/bd_2af6_g_inst_0.v" \

vlog -work xlconcat_v2_1_4  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_2/sim/bd_2af6_slot_0_aw_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_3/sim/bd_2af6_slot_0_w_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_4/sim/bd_2af6_slot_0_b_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_5/sim/bd_2af6_slot_0_ar_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_6/sim/bd_2af6_slot_0_r_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/sim/bd_2af6.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/sim/tangerineA7_100_system_ila_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_tangerineMIGWrapper_0_0/sim/tangerineA7_100_tangerineMIGWrapper_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_2_0/tangerineA7_100_clk_wiz_2_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_2_0/tangerineA7_100_clk_wiz_2_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_tangerineSOC_0_0/sim/tangerineA7_100_tangerineSOC_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/sim/tangerineA7_100.v" \

vlog -work xil_defaultlib \
"glbl.v"

