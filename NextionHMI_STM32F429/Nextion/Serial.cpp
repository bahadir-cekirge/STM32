#include <Serial.h>
#include "string.h"

Serial::Serial(UART_HandleTypeDef* huart, uint16_t bufferSize)
{
	this->buffer = new uint8_t[bufferSize];
	this->uartTimeout = 1000;
	this->huart = huart;
	this->writeIndex = 0;
	this->readIndex = 0;
	this->rx = 0;
	this->dataCount = 0;
	this->bufferSize = bufferSize;

	memset(buffer,0,2048);

	while(HAL_UART_Receive_IT(huart, &rx, 1) != HAL_OK);
}

Serial::~Serial()
{

}

void Serial::put(uint8_t data)
{
	if (dataCount >= bufferSize)
	{
		return;
	}

	buffer[getWriteIndex()] = data;
	//buffer[dataCount] = data;
	dataCount++;

	while(HAL_UART_Receive_IT(huart, &rx, 1) != HAL_OK);
}

void Serial::setTimeout(uint32_t timeout)
{
	this->uartTimeout = timeout;
}

uint16_t Serial::available()
{
	return dataCount;
}

void Serial::print(const char* cmd)
{
	uint16_t size = strlen(cmd);

	HAL_UART_Transmit(huart, (uint8_t*) cmd,size,uartTimeout);
}

void Serial::println(const char* cmd)
{
	print(cmd);
	print("\r\n");
}

void Serial::println()
{
	print("\r\n");
}

void Serial::write(uint8_t data)
{
	HAL_UART_Transmit(huart,&data,1,uartTimeout);
}

uint16_t Serial::readBytes(uint8_t* temp,uint16_t size)
{
	//HAL_Delay(uartTimeout);

	uint16_t readCount = 0;

	for (int i = 0; i < size; i++) {

		int32_t index = getReadIndex();

		if (index != -1) {

			temp[readCount] = buffer[index];
			readCount++;

			dataCount--;
		}
		else {
			break;
		}
	}

	return readCount;
}

uint8_t Serial::read()
{
	//HAL_Delay(uartTimeout);

	int32_t index = getReadIndex();

	if (index != -1) {

		dataCount--;

		return buffer[index];
	}
	else
		return 0;
}

int32_t Serial::getReadIndex()
{
	uint16_t oreadIndex = readIndex;

	if (dataCount == 0)
		return -1;
	else {
		if (readIndex == bufferSize) {
			readIndex = 0;
		}
		else {
			readIndex++;
		}
	}

	return oreadIndex;
}

int32_t Serial::getWriteIndex()
{
	uint16_t owriteIndex = writeIndex;

	if (dataCount == bufferSize)
		return -1;
	else
	{
		if (writeIndex == bufferSize) {
			writeIndex = 0;
		}
		else {
			writeIndex++;
		}
	}

	return owriteIndex;
}
