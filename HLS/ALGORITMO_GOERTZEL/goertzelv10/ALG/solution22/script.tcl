############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ALG
set_top goertzel_algorithm_simpler
add_files axi_algorithm.cpp
add_files axi_algorithm.h
add_files stim.h
add_files -tb testv6.cpp
open_solution "solution22"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
config_dataflow -default_channel fifo -fifo_depth 4
#source "./ALG/solution22/directives.tcl"
csim_design -clean
csynth_design
cosim_design -rtl vhdl
export_design -flow impl -rtl vhdl -format ip_catalog
