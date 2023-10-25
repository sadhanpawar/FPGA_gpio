transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/sadhanpawar/UTA/SOC/FPGA/gpio/gpio.cache/compile_simlib/riviera}
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 "+incdir+../../../../gpio.gen/sources_1/ip/vio_1/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/ip/vio_1/hdl" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../gpio.gen/sources_1/ip/vio_1/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/ip/vio_1/hdl" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"../../../../gpio.gen/sources_1/ip/vio_1/sim/vio_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

