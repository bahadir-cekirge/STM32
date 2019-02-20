################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Nextion/NexButton.cpp \
../Nextion/NexCheckbox.cpp \
../Nextion/NexCrop.cpp \
../Nextion/NexDualStateButton.cpp \
../Nextion/NexGauge.cpp \
../Nextion/NexGpio.cpp \
../Nextion/NexHardware.cpp \
../Nextion/NexHotspot.cpp \
../Nextion/NexNumber.cpp \
../Nextion/NexObject.cpp \
../Nextion/NexPage.cpp \
../Nextion/NexPicture.cpp \
../Nextion/NexProgressBar.cpp \
../Nextion/NexRadio.cpp \
../Nextion/NexRtc.cpp \
../Nextion/NexScrolltext.cpp \
../Nextion/NexSlider.cpp \
../Nextion/NexText.cpp \
../Nextion/NexTimer.cpp \
../Nextion/NexTouch.cpp \
../Nextion/NexVariable.cpp \
../Nextion/NexWaveform.cpp \
../Nextion/Serial.cpp 

OBJS += \
./Nextion/NexButton.o \
./Nextion/NexCheckbox.o \
./Nextion/NexCrop.o \
./Nextion/NexDualStateButton.o \
./Nextion/NexGauge.o \
./Nextion/NexGpio.o \
./Nextion/NexHardware.o \
./Nextion/NexHotspot.o \
./Nextion/NexNumber.o \
./Nextion/NexObject.o \
./Nextion/NexPage.o \
./Nextion/NexPicture.o \
./Nextion/NexProgressBar.o \
./Nextion/NexRadio.o \
./Nextion/NexRtc.o \
./Nextion/NexScrolltext.o \
./Nextion/NexSlider.o \
./Nextion/NexText.o \
./Nextion/NexTimer.o \
./Nextion/NexTouch.o \
./Nextion/NexVariable.o \
./Nextion/NexWaveform.o \
./Nextion/Serial.o 

CPP_DEPS += \
./Nextion/NexButton.d \
./Nextion/NexCheckbox.d \
./Nextion/NexCrop.d \
./Nextion/NexDualStateButton.d \
./Nextion/NexGauge.d \
./Nextion/NexGpio.d \
./Nextion/NexHardware.d \
./Nextion/NexHotspot.d \
./Nextion/NexNumber.d \
./Nextion/NexObject.d \
./Nextion/NexPage.d \
./Nextion/NexPicture.d \
./Nextion/NexProgressBar.d \
./Nextion/NexRadio.d \
./Nextion/NexRtc.d \
./Nextion/NexScrolltext.d \
./Nextion/NexSlider.d \
./Nextion/NexText.d \
./Nextion/NexTimer.d \
./Nextion/NexTouch.d \
./Nextion/NexVariable.d \
./Nextion/NexWaveform.d \
./Nextion/Serial.d 


# Each subdirectory must supply rules for building sources it contributes
Nextion/%.o: ../Nextion/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU G++ Compiler'
	@echo $(PWD)
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F105xC -I"C:/Users/BahadirWS/Desktop/NextionHMI_STM32F105/Inc" -I"C:/Users/BahadirWS/Desktop/NextionHMI_STM32F105/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/BahadirWS/Desktop/NextionHMI_STM32F105/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/BahadirWS/Desktop/NextionHMI_STM32F105/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/BahadirWS/Desktop/NextionHMI_STM32F105/Drivers/CMSIS/Include" -I"C:/Users/BahadirWS/Desktop/NextionHMI_STM32F105/Nextion"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fno-exceptions -fno-rtti -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


