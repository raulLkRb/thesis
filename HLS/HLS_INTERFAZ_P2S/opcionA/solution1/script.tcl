############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project opcionA
set_top opcionA
add_files axi_algorithm.h
add_files axi_algorithm.cpp
add_files -tb axi_algorithm_test_SWEEP_v2.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./opcionA/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -flow impl -rtl vhdl -format ip_catalog
