/*
 * Serial.h
 *
 *  Created on: 19 Þub 2019
 *      Author: BahadirWS
 */

#ifndef SERIAL_H_
#define SERIAL_H_

#include "stm32f1xx_hal.h"
#include <stdbool.h>
#include <string>

using namespace std;

class Serial {
public:
	Serial(UART_HandleTypeDef* huart, uint16_t bufferSize);
	virtual ~Serial();
	void setTimeout(uint32_t timeout);
	uint16_t available();

	void print(const char* cmd);
	void println(const char* cmd);
	void println();

	void write(uint8_t data);

	uint16_t readBytes(uint8_t* temp, uint16_t size);

	uint8_t read();

	void put(uint8_t data);

private:
	UART_HandleTypeDef* huart;
	uint32_t uartTimeout;
	uint8_t* buffer;
	uint16_t writeIndex;
	uint16_t readIndex;
	uint16_t dataCount;
	uint8_t rx;
	uint16_t bufferSize;

	int32_t getReadIndex();
	int32_t getWriteIndex();
};

#endif /* SERIAL_H_ */
