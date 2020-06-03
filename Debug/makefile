################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32L0xx_HAL_Driver/Src/subdir.mk
-include Drivers/BSP/SX1276MB1MAS/subdir.mk
-include Drivers/BSP/SX1276MB1LAS/subdir.mk
-include Drivers/BSP/SX1272MB2DAS/subdir.mk
-include Drivers/BSP/SX1262DVK1CAS/subdir.mk
-include Drivers/BSP/SX1261DVK1BAS/subdir.mk
-include Drivers/BSP/Components/sx1276/subdir.mk
-include Drivers/BSP/Components/sx1272/subdir.mk
-include Drivers/BSP/Components/sx126x/subdir.mk
-include Drivers/BSP/Components/lps25hb/subdir.mk
-include Drivers/BSP/Components/hts221/subdir.mk
-include Drivers/BSP/CMWX1ZZABZ-0xx/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/LoRaWAN/App/src/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Project_73RZ.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Project_73RZ.list \


# All Target
all: Project_73RZ.elf secondary-outputs

# Tool invocations
Project_73RZ.elf: $(OBJS) $(USER_OBJS) C:\Users\user\Desktop\IMPORTANT\THE\ WORKPLACE\workspace\Project_73RZ\STM32L073RZTX_FLASH.ld
	arm-none-eabi-gcc -o "Project_73RZ.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m0plus -T"C:\Users\user\Desktop\IMPORTANT\THE WORKPLACE\workspace\Project_73RZ\STM32L073RZTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Project_73RZ.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Project_73RZ.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Project_73RZ.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
