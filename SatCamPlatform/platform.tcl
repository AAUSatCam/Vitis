# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\School\Vivado\ZynqDemoRemake\workspace_final\SatCamPlatform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\School\Vivado\ZynqDemoRemake\workspace_final\SatCamPlatform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {SatCamPlatform}\
-hw {C:\School\Vivado\ZynqDemoRemake\vivado\zsys_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {freertos10_xilinx} -out {C:/School/Vivado/ZynqDemoRemake/workspace_final}

platform write
platform generate -domains 
platform active {SatCamPlatform}
platform generate
