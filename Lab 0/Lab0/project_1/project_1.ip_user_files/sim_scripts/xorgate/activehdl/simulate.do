onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+xorgate -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xorgate xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xorgate.udo}

run -all

endsim

quit -force
