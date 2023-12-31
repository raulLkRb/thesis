# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.cache/wt [current_project]
set_property parent.project_path C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/Block_preheader117_s.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/Block_preheader11bkb.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/Loop_3_proc.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/Loop_L1_proc.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/Loop_L1_proc_coeff.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/read_data.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_cud.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_dEe.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_eOg.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_fYi.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_g8j.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_g8j_memcore.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_hbi.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_hbi_memcore.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_ibs.vhd
  C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw_ibs_memcore.vhd
}
read_ip -quiet c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.srcs/sources_1/ip/wrapped_mmult_hw_ap_fmul_2_max_dsp_32/wrapped_mmult_hw_ap_fmul_2_max_dsp_32.xci
set_property is_locked true [get_files c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.srcs/sources_1/ip/wrapped_mmult_hw_ap_fmul_2_max_dsp_32/wrapped_mmult_hw_ap_fmul_2_max_dsp_32.xci]

read_ip -quiet c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.srcs/sources_1/ip/wrapped_mmult_hw_ap_fadd_3_full_dsp_32/wrapped_mmult_hw_ap_fadd_3_full_dsp_32.xci
set_property is_locked true [get_files c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.srcs/sources_1/ip/wrapped_mmult_hw_ap_fadd_3_full_dsp_32/wrapped_mmult_hw_ap_fadd_3_full_dsp_32.xci]

read_ip -quiet c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.srcs/sources_1/ip/wrapped_mmult_hw_ap_sitofp_4_no_dsp_32/wrapped_mmult_hw_ap_sitofp_4_no_dsp_32.xci
set_property is_locked true [get_files c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.srcs/sources_1/ip/wrapped_mmult_hw_ap_sitofp_4_no_dsp_32/wrapped_mmult_hw_ap_sitofp_4_no_dsp_32.xci]

read_ip -quiet c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.srcs/sources_1/ip/wrapped_mmult_hw_ap_fsub_3_full_dsp_32/wrapped_mmult_hw_ap_fsub_3_full_dsp_32.xci
set_property is_locked true [get_files c:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/project.srcs/sources_1/ip/wrapped_mmult_hw_ap_fsub_3_full_dsp_32/wrapped_mmult_hw_ap_fsub_3_full_dsp_32.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw.xdc
set_property used_in_implementation false [get_files C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/impl/vhdl/wrapped_mmult_hw.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top wrapped_mmult_hw -part xc7z020clg484-1 -no_iobuf -mode out_of_context


write_checkpoint -force -noxdef wrapped_mmult_hw.dcp

catch { report_utilization -file wrapped_mmult_hw_utilization_synth.rpt -pb wrapped_mmult_hw_utilization_synth.pb }
