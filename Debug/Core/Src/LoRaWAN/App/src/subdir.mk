################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/LoRaWAN/App/src/bsp.c \
../Core/Src/LoRaWAN/App/src/debug.c \
../Core/Src/LoRaWAN/App/src/hw_gpio.c \
../Core/Src/LoRaWAN/App/src/hw_rtc.c \
../Core/Src/LoRaWAN/App/src/hw_spi.c \
../Core/Src/LoRaWAN/App/src/main.c \
../Core/Src/LoRaWAN/App/src/vcom.c 

OBJS += \
./Core/Src/LoRaWAN/App/src/bsp.o \
./Core/Src/LoRaWAN/App/src/debug.o \
./Core/Src/LoRaWAN/App/src/hw_gpio.o \
./Core/Src/LoRaWAN/App/src/hw_rtc.o \
./Core/Src/LoRaWAN/App/src/hw_spi.o \
./Core/Src/LoRaWAN/App/src/main.o \
./Core/Src/LoRaWAN/App/src/vcom.o 

C_DEPS += \
./Core/Src/LoRaWAN/App/src/bsp.d \
./Core/Src/LoRaWAN/App/src/debug.d \
./Core/Src/LoRaWAN/App/src/hw_gpio.d \
./Core/Src/LoRaWAN/App/src/hw_rtc.d \
./Core/Src/LoRaWAN/App/src/hw_spi.d \
./Core/Src/LoRaWAN/App/src/main.d \
./Core/Src/LoRaWAN/App/src/vcom.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/LoRaWAN/App/src/bsp.o: ../Core/Src/LoRaWAN/App/src/bsp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/LoRaWAN/App/src/bsp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/LoRaWAN/App/src/debug.o: ../Core/Src/LoRaWAN/App/src/debug.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/LoRaWAN/App/src/debug.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/LoRaWAN/App/src/hw_gpio.o: ../Core/Src/LoRaWAN/App/src/hw_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/LoRaWAN/App/src/hw_gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/LoRaWAN/App/src/hw_rtc.o: ../Core/Src/LoRaWAN/App/src/hw_rtc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/LoRaWAN/App/src/hw_rtc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/LoRaWAN/App/src/hw_spi.o: ../Core/Src/LoRaWAN/App/src/hw_spi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/LoRaWAN/App/src/hw_spi.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/LoRaWAN/App/src/main.o: ../Core/Src/LoRaWAN/App/src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/LoRaWAN/App/src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/LoRaWAN/App/src/vcom.o: ../Core/Src/LoRaWAN/App/src/vcom.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/LoRaWAN/App/src/vcom.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

