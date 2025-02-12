transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mig_7series_tangerine  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mig_7series_tangerine xil_defaultlib.glbl

do {mig_7series_tangerine.udo}

run 1000ns

endsim

quit -force
