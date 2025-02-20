onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib dmaCh2BufRam_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dmaCh2BufRam.udo}

run 1000ns

quit -force
