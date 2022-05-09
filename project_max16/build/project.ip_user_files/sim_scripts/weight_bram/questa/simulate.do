onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib weight_bram_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {weight_bram.udo}

run -all

quit -force
