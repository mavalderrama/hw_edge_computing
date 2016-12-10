# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.cache/wt [current_project]
set_property parent.project_path C:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/maval/Desktop/hw/lib [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files C:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_timer_1_0/system_axi_timer_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_timer_1_0/system_axi_timer_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_100M_0/system_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_100M_0/system_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_rst_processing_system7_0_100M_0/system_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system_ooc.xdc]
set_property is_locked true [get_files C:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system.bd]

read_verilog -library xil_defaultlib C:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/hdl/system_wrapper.v
read_xdc C:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/constrs_1/new/base.xdc
set_property used_in_implementation false [get_files C:/Users/maval/Desktop/hw/zybo_bsd/zybo_bsd.srcs/constrs_1/new/base.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top system_wrapper -part xc7z010clg400-1
write_checkpoint -noxdef system_wrapper.dcp
catch { report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb }