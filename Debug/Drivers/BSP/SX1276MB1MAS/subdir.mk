################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/SX1276MB1MAS/sx1276mb1mas.c 

OBJS += \
./Drivers/BSP/SX1276MB1MAS/sx1276mb1mas.o 

C_DEPS += \
./Drivers/BSP/SX1276MB1MAS/sx1276mb1mas.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/SX1276MB1MAS/sx1276mb1mas.o: ../Drivers/BSP/SX1276MB1MAS/sx1276mb1mas.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/SX1276MB1MAS/sx1276mb1mas.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

