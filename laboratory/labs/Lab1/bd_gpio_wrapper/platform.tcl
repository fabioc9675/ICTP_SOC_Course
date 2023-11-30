# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/argo49/smr3891/labs/Lab1/bd_gpio_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/argo49/smr3891/labs/Lab1/bd_gpio_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {bd_gpio_wrapper}\
-hw {/home/argo49/smr3891/labs/Lab1/bd_gpio_wrapper.xsa}\
-out {/home/argo49/smr3891/labs/Lab1}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {bd_gpio_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {bd_gpio_wrapper}
platform config -desc {bd_gpio_wrapper}
platform write
domain active {zynq_fsbl}
bsp reload
platform clean
platform generate
platform config -updatehw {/home/argo49/smr3891/labs/Lab1/bd_gpio_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/argo49/smr3891/labs/Lab1/bd_gpio_wrapper.xsa}
platform clean
platform generate
