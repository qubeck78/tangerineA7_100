transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+tangerineA7_100  -L xpm -L xil_defaultlib -L xlslice_v1_0_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tangerineA7_100 xil_defaultlib.glbl

do {tangerineA7_100.udo}

run 1000ns

endsim

quit -force
