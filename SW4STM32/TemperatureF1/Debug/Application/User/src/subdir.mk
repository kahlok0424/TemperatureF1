################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/src/tm_stm32f1_gpio.c \
../Application/User/src/tm_stm32f4_delay.c \
../Application/User/src/tm_stm32f4_disco.c \
../Application/User/src/tm_stm32f4_ds18b20.c \
../Application/User/src/tm_stm32f4_onewire.c 

OBJS += \
./Application/User/src/tm_stm32f1_gpio.o \
./Application/User/src/tm_stm32f4_delay.o \
./Application/User/src/tm_stm32f4_disco.o \
./Application/User/src/tm_stm32f4_ds18b20.o \
./Application/User/src/tm_stm32f4_onewire.o 

C_DEPS += \
./Application/User/src/tm_stm32f1_gpio.d \
./Application/User/src/tm_stm32f4_delay.d \
./Application/User/src/tm_stm32f4_disco.d \
./Application/User/src/tm_stm32f4_ds18b20.d \
./Application/User/src/tm_stm32f4_onewire.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/src/%.o: ../Application/User/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


