################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Raul/Documents/GOERTZEL_HLS/goertzelv6/axi_algorithm.cpp 

OBJS += \
./source/axi_algorithm.o 

CPP_DEPS += \
./source/axi_algorithm.d 


# Each subdirectory must supply rules for building sources it contributes
source/axi_algorithm.o: C:/Users/Raul/Documents/GOERTZEL_HLS/goertzelv6/axi_algorithm.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2017.1/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2017.1/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2017.1/include -IC:/Xilinx/Vivado_HLS/2017.1/include/etc -IC:/Users/Raul/Documents/GOERTZEL_HLS/goertzelv6 -IC:/Users/Raul/Documents/PROJECT_D_IPCORES/IP_CORES_D_2017/ALG_PR_DATOS_FIJOS -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


