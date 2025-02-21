transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/qubeck/Documents/Development/ProjektyVHDL/WukongBoard/tangerineA7_100/tangerineA7_100.cache/compile_simlib/activehdl}
vlib activehdl/xpm
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_18
vlib activehdl/floating_point_v7_1_15
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib \
"../../../../tangerineA7_100.gen/sources_1/ip/fpMul/sim/fpMul.v" \

vlog -work xil_defaultlib \
"glbl.v"

