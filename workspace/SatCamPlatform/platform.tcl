platform generate
platform generate -domains freertos10_xilinx_domain 
platform active {SatCamPlatform}
platform config -updatehw {C:/School/Vivado/ZynqDemoRemake/vivado/zsys_wrapper.xsa}
platform generate
domain active {zynq_fsbl}
bsp reload
domain active {freertos10_xilinx_domain}
bsp reload
platform generate -domains 
platform config -updatehw {C:/School/Vivado/ZynqDemoRemake/vivado/zsys_wrapper.xsa}
platform generate -domains 
platform active {SatCamPlatform}
platform config -updatehw {C:/School/Vivado/ZynqDemoRemake/vivado/zsys_wrapper.xsa}
platform generate -domains 
