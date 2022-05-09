onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib NIT_bram_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {NIT_bram.udo}

run -all

quit -force
