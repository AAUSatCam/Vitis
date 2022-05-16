# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\School\Vivado\ZynqDemoRemake\workspace_final\SatCam\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\School\Vivado\ZynqDemoRemake\workspace_final\SatCam\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {SatCam}\
-hw {C:\School\Vivado\ZynqDemoRemake\vivado\zsys_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {freertos10_xilinx} -out {C:/School/Vivado/ZynqDemoRemake/workspace_final}

platform write
platform generate -domains 
platform active {SatCam}
domain active {zynq_fsbl}
bsp reload
domain active {freertos10_xilinx_domain}
bsp reload
platform generate
platform generate -domains freertos10_xilinx_domain,zynq_fsbl 
platform config -updatehw {C:/School/Vivado/ZynqDemoRemake/vivado/zsys_wrapper.xsa}
platform generate -domains 
platform active {SatCam}
platform config -updatehw {C:/School/Vivado/ZynqDemoRemake/vivado/zsys_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/School/Vivado/ZynqDemoRemake/vivado/zsys_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/School/Vivado/ZynqDemoRemake/vivado/zsys_wrapper.xsa}
platform generate -domains 
