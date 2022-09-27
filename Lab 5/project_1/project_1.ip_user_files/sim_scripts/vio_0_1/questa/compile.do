vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../../project_1.srcs/sources_1/ip/vio_0_1/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/ip/vio_0_1/hdl" \
"../../../../project_1.srcs/sources_1/ip/vio_0_1/sim/vio_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

