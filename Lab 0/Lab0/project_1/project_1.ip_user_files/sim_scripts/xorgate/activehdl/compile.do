vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/xorgate/ipshared/35a3/xup_nand2.srcs/sources_1/new/xup_nand2.v" \
"../../../bd/xorgate/ip/xorgate_xup_nand2_0_2/sim/xorgate_xup_nand2_0_2.v" \
"../../../bd/xorgate/ip/xorgate_xup_nand2_0_3/sim/xorgate_xup_nand2_0_3.v" \
"../../../bd/xorgate/ip/xorgate_xup_nand2_0_0/sim/xorgate_xup_nand2_0_0.v" \
"../../../bd/xorgate/ip/xorgate_xup_nand2_0_1/sim/xorgate_xup_nand2_0_1.v" \
"../../../bd/xorgate/sim/xorgate.v" \


vlog -work xil_defaultlib \
"glbl.v"

