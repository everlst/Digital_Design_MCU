onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib imem_7_opt

do {wave.do}

view wave
view structure
view signals

do {imem_7.udo}

run -all

quit -force
