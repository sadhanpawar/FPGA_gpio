vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_14
vlib questa_lib/msim/processing_system7_vip_v1_0_16
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_8
vlib questa_lib/msim/axi_data_fifo_v2_1_27
vlib questa_lib/msim/axi_register_slice_v2_1_28
vlib questa_lib/msim/axi_protocol_converter_v2_1_28

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_14 questa_lib/msim/axi_vip_v1_1_14
vmap processing_system7_vip_v1_0_16 questa_lib/msim/processing_system7_vip_v1_0_16
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_8 questa_lib/msim/fifo_generator_v13_2_8
vmap axi_data_fifo_v2_1_27 questa_lib/msim/axi_data_fifo_v2_1_27
vmap axi_register_slice_v2_1_28 questa_lib/msim/axi_register_slice_v2_1_28
vmap axi_protocol_converter_v2_1_28 questa_lib/msim/axi_protocol_converter_v2_1_28

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/sadhanpawar/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16 -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../gpio.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../gpio.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_proc_sys_reset_0_0/sim/system_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/system/ipshared/20e5/hdl/gpio_v1_0_AXI.v" \
"../../../bd/system/ipshared/20e5/hdl/gpio_v1_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_gpio_0_0/sim/system_gpio_0_0.v" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \
"../../../bd/system/ip/system_ila_0_0/sim/system_ila_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8 -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -64 -93  \
"../../../../gpio.gen/sources_1/bd/system/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8 -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../gpio.gen/sources_1/bd/system/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/aed8/hdl" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/affe/hdl/verilog" "+incdir+../../../../gpio.gen/sources_1/bd/system/ipshared/20d0/hdl/verilog" "+incdir+/home/sadhanpawar/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

