################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/user1/Desktop/TemperatureF1/Src/main.c \
C:/Users/user1/Desktop/TemperatureF1/Src/stm32f1xx_hal_msp.c 

OBJS += \
./Application/User/main.o \
./Application/User/stm32f1xx_hal_msp.o 

C_DEPS += \
./Application/User/main.d \
./Application/User/stm32f1xx_hal_msp.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/main.o: C:/Users/user1/Desktop/TemperatureF1/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f1xx_hal_msp.o: C:/Users/user1/Desktop/TemperatureF1/Src/stm32f1xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


