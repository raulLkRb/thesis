############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matriz_mult
set_top wrapped_mmult_hw
add_files mmult.h
add_files mmult_accel.cpp
add_files -tb mmult_test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./matriz_mult/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -flow impl -rtl vhdl -format ip_catalog
