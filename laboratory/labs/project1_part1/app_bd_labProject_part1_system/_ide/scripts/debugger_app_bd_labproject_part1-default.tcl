# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/argo49/smr3891/labs/project1_part1/app_bd_labProject_part1_system/_ide/scripts/debugger_app_bd_labproject_part1-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/argo49/smr3891/labs/project1_part1/app_bd_labProject_part1_system/_ide/scripts/debugger_app_bd_labproject_part1-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248763819" && level==0 && jtag_device_ctx=="jsn-Zed-210248763819-23727093-0"}
fpga -file /home/argo49/smr3891/labs/project1_part1/app_bd_labProject_part1/_ide/bitstream/bd_labProject_part1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/argo49/smr3891/labs/project1_part1/bd_labProject_part1_wrapper/export/bd_labProject_part1_wrapper/hw/bd_labProject_part1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/argo49/smr3891/labs/project1_part1/app_bd_labProject_part1/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/argo49/smr3891/labs/project1_part1/app_bd_labProject_part1/Debug/app_bd_labProject_part1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
