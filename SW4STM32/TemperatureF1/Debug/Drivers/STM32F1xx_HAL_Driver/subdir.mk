################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c \
C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c 

OBJS += \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.o \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.o 

C_DEPS += \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.d \
./Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_cortex.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_dma.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_flash_ex.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_gpio_ex.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_pwr.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_rcc_ex.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F1xx_HAL_Driver/stm32f1xx_hal_tim_ex.o: C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/user1/Desktop/TemperatureF1/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/user1/Desktop/TemperatureF1/Drivers/CMSIS/Include" -I"C:/Users/user1/Desktop/TemperatureF1/SW4STM32/TemperatureF1/Application/User/inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


