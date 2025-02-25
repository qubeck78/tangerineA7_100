transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/qubeck/Documents/Development/ProjektyVHDL/WukongBoard/tangerineA7_100/tangerineA7_100.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_2
vlib riviera/xlconstant_v1_1_7

vlog -work xpm  -incr "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_hdmiOut_0_0/sim/tangerineA7_100_hdmiOut_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0.v" \

vlog -work xlslice_v1_0_2  -incr -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlslice_0_0/sim/tangerineA7_100_xlslice_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlconstant_0_0/sim/tangerineA7_100_xlconstant_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_tangerineMIGWrapper_0_0/sim/tangerineA7_100_tangerineMIGWrapper_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_2_0/tangerineA7_100_clk_wiz_2_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_2_0/tangerineA7_100_clk_wiz_2_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlslice_1_0/sim/tangerineA7_100_xlslice_1_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_tangerineSOC_0_0/sim/tangerineA7_100_tangerineSOC_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/sim/tangerineA7_100.v" \

vlog -work xil_defaultlib \
"glbl.v"

