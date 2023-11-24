############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Lab4_HLS
set_top fir
add_files ../FRincon/fir/firTop.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-3}
create_clock -period 10 -name default
source "./Lab4_HLS/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
