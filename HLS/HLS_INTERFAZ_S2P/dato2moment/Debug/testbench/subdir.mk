################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Raul/Documents/RIGIDEZ_VIVADO/HLS_INTERFAZ_INIT/axi_algorithm_test_SWEEP_v2.cpp 

OBJS += \
./testbench/axi_algorithm_test_SWEEP_v2.o 

CPP_DEPS += \
./testbench/axi_algorithm_test_SWEEP_v2.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/axi_algorithm_test_SWEEP_v2.o: C:/Users/Raul/Documents/RIGIDEZ_VIVADO/HLS_INTERFAZ_INIT/axi_algorithm_test_SWEEP_v2.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2017.1/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2017.1/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2017.1/include -IC:/Xilinx/Vivado_HLS/2017.1/include/etc -IC:/Users/Raul/Documents/RIGIDEZ_VIVADO/HLS_INTERFAZ_INIT -IC:/Users/Raul/Documents/RIGIDEZ_VIVADO/HLS_PROJECTS -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


