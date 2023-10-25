// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Tue Oct 24 20:45:20 2023
// Host        : sadhanpawar-ThinkPad-E14-Gen-4 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/sadhanpawar/UTA/SOC/FPGA/gpio/gpio.gen/sources_1/ip/vio_1/vio_1_stub.v
// Design      : vio_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2023.1.1" *)
module vio_1(clk, probe_out0, probe_out1, probe_out2, 
  probe_out3)
/* synthesis syn_black_box black_box_pad_pin="probe_out0[11:0],probe_out1[11:0],probe_out2[0:0],probe_out3[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  output [11:0]probe_out0;
  output [11:0]probe_out1;
  output [0:0]probe_out2;
  output [0:0]probe_out3;
endmodule
