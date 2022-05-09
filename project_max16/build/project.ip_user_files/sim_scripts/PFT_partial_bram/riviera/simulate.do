onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+PFT_partial_bram -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PFT_partial_bram xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {PFT_partial_bram.udo}

run -all

endsim

quit -force
