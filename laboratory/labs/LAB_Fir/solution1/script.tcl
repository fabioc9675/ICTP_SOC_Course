############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LAB_Fir
set_top fir
add_files LAB_Fir/src/firTop.h
add_files LAB_Fir/src/firTop.cpp
add_files LAB_Fir/src/firCoeff.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-3}
create_clock -period 10 -name default
#source "./LAB_Fir/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
