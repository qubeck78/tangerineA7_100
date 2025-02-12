vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/fifo_generator_v13_2_8
vlib questa_lib/msim/axi_clock_converter_v2_1_27

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap fifo_generator_v13_2_8 questa_lib/msim/fifo_generator_v13_2_8
vmap axi_clock_converter_v2_1_27 questa_lib/msim/axi_clock_converter_v2_1_27

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_0_0/tangerineA7_100_clk_wiz_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_hdmiOut_0_0/sim/tangerineA7_100_hdmiOut_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0_clk_wiz.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_clk_wiz_1_0/tangerineA7_100_clk_wiz_1_0.v" \

vlog -work xlslice_v1_0_2  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlslice_0_0/sim/tangerineA7_100_xlslice_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_tangerineSOC_0_0/sim/tangerineA7_100_tangerineSOC_0_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_tangerineMIGWrapper_0_0/sim/tangerineA7_100_tangerineMIGWrapper_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_xlconstant_0_0/sim/tangerineA7_100_xlconstant_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8  -93  \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_clock_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/29db/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/30ef" "+incdir+../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ipshared/ec67/hdl" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/ip/tangerineA7_100_auto_cc_0/sim/tangerineA7_100_auto_cc_0.v" \
"../../../../tangerineA7_100.gen/sources_1/bd/tangerineA7_100/sim/tangerineA7_100.v" \

vlog -work xil_defaultlib \
"glbl.v"

