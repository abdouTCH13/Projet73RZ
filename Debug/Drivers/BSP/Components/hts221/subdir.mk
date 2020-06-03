################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/hts221/HTS221_Driver.c \
../Drivers/BSP/Components/hts221/HTS221_Driver_HL.c 

OBJS += \
./Drivers/BSP/Components/hts221/HTS221_Driver.o \
./Drivers/BSP/Components/hts221/HTS221_Driver_HL.o 

C_DEPS += \
./Drivers/BSP/Components/hts221/HTS221_Driver.d \
./Drivers/BSP/Components/hts221/HTS221_Driver_HL.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/hts221/HTS221_Driver.o: ../Drivers/BSP/Components/hts221/HTS221_Driver.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/hts221/HTS221_Driver.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/BSP/Components/hts221/HTS221_Driver_HL.o: ../Drivers/BSP/Components/hts221/HTS221_Driver_HL.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L073xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/lps25hb" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/hts221" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Drivers/BSP/Components/Common" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Core/Src/LoRaWAN/App/inc" -I"C:/Users/user/Desktop/IMPORTANT/THE WORKPLACE/workspace/Project_73RZ/Middlewares/Third_Party/LoRaWAN_DRIVERS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/hts221/HTS221_Driver_HL.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

