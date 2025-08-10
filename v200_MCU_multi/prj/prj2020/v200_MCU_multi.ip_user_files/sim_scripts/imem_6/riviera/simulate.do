onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+imem_6 -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.imem_6 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {imem_6.udo}

run -all

endsim

quit -force
