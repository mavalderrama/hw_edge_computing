################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/app.c \
../src/http-c_app.c \
../src/http-c_hooks.c \
../src/static_files.c 

OBJS += \
./src/app.o \
./src/http-c_app.o \
./src/http-c_hooks.o \
./src/static_files.o 

C_DEPS += \
./src/app.d \
./src/http-c_app.d \
./src/http-c_hooks.d \
./src/static_files.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I../../test_bsp/ps7_cortexa9_0/include -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


