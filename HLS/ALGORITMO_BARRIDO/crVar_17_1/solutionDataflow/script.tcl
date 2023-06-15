############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project crVar_17_1
set_top axi_algorithm
add_files axi_algorithm.cpp
add_files axi_algorithm.h
add_files stimTestM10.h
add_files stimTestM100.h
add_files stimTestM125.h
add_files stimTestM150.h
add_files stimTestM175.h
add_files stimTestM2.h
add_files stimTestM20.h
add_files stimTestM200.h
add_files stimTestM250.h
add_files stimTestM30.h
add_files stimTestM5.h
add_files stimTestM50.h
add_files -tb axi_algorithm_test_SWEEP_v30.cpp
open_solution "solutionDataflow"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./crVar_17_1/solutionDataflow/directives.tcl"
csim_design -clean
csynth_design
cosim_design -rtl vhdl
export_design -flow impl -rtl vhdl -format ip_catalog
