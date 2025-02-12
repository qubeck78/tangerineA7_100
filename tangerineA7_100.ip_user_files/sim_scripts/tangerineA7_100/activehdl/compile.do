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
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/fifo_generator_v13_2_8
vlib activehdl/axi_clock_converter_v2_1_27

vlog -work xpm  -sv2k12 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_hdmiOut_0_0/sim/tangerineA7_100_hdmiOut_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlslice_0_0/sim/tangerineA7_100_xlslice_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_tangerineSOC_0_0/sim/tangerineA7_100_tangerineSOC_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_tangerineMIGWrapper_0_0/sim/tangerineA7_100_tangerineMIGWrapper_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlconstant_0_0/sim/tangerineA7_100_xlconstant_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_clock_converter_v2_1_27  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/29db/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" -l xpm -l xil_defaultlib -l xlslice_v1_0_2 -l xlconstant_v1_1_7 -l axi_infrastructure_v1_1_0 -l fifo_generator_v13_2_8 -l axi_clock_converter_v2_1_27 \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_auto_cc_0/sim/tangerineA7_100_auto_cc_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/sim/tangerineA7_100.v" \

vlog -work xil_defaultlib \
"glbl.v"

