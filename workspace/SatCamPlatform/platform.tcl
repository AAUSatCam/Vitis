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
platform active {SatCamPlatform}
bsp reload
bsp config extra_compiler_flags "-pg -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
platform fsbl -extra-compiler-flags {-pg -MMD -MP       -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard }
platform write
platform fsbl -extra-linker-flags {}
platform write
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
platform fsbl -extra-compiler-flags {-MMD -MP       -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard}
platform write
platform fsbl -extra-linker-flags {}
platform write
platform generate
