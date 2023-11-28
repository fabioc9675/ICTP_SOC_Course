# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/argo49/smr3891/labs/Lab3_RTOS/design_1_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/argo49/smr3891/labs/Lab3_RTOS/design_1_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {/home/argo49/smr3891/labs/Lab3_RTOS/design_1_wrapper.xsa}\
-out {/home/argo49/smr3891/labs/Lab3_RTOS}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {HrFreertos_lwip_echo}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
platform clean
platform generate
