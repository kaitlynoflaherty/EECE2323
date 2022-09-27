onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib xorgate_opt

do {wave.do}

view wave
view structure
view signals

do {xorgate.udo}

run -all

quit -force
