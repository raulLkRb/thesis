################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/HLS_MATRIZ_MULT_C2_nC5/mmult_test.cpp 

OBJS += \
./testbench/mmult_test.o 

CPP_DEPS += \
./testbench/mmult_test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/mmult_test.o: C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/HLS_MATRIZ_MULT_C2_nC5/mmult_test.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -IC:/Xilinx/Vivado_HLS/2017.1/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2017.1/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2017.1/include -IC:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/HLS_MATRIZ_MULT_C2_nC5 -IC:/Xilinx/Vivado_HLS/2017.1/include/etc -IC:/Users/Raul/Documents/RIGIDEZ_VIVADO/HLS_MATRIZ_MULT_MAXMOM_CAMBIOS -IC:/Users/Raul/Documents/RIGIDEZ_VIVADO/HLS_MATRIZ_MULT_MAXMOM -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


