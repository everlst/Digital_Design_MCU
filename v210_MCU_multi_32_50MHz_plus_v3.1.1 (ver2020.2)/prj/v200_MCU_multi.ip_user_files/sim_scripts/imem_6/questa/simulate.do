onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib imem_6_opt

do {wave.do}

view wave
view structure
view signals

do {imem_6.udo}

run -all

quit -force
