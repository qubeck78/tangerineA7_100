transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/qubeck/Documents/Development/ProjektyVHDL/WukongBoard/tangerineA7_100/tangerineA7_100.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/xlslice_v1_0_2
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/gigantic_mux
vlib activehdl/xlconcat_v2_1_4

vlog -work xpm  -sv2k12 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_hdmiOut_0_0/sim/tangerineA7_100_hdmiOut_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlslice_0_0/sim/tangerineA7_100_xlslice_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlconstant_0_0/sim/tangerineA7_100_xlconstant_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_0/sim/bd_2af6_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_1/bd_2af6_g_inst_0_gigantic_mux.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_system_ila_0_0/bd_0/ip/ip_1/sim/bd_2af6_g_inst_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/1b7e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/122e/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/affe/hdl/verilog" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/20d0/hdl/verilog" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l gigantic_mux -l xlconcat_v2_1_4 \
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

