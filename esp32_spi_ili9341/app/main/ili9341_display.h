/*
 * ili9341_display.h
 *
 *  Created on: 2018年8月9日
 *      Author: guo
 */

#ifndef ESP32_SPI_ILI9341_APP_MAIN_ILI9341_DISPLAY_H_
#define ESP32_SPI_ILI9341_APP_MAIN_ILI9341_DISPLAY_H_
#include "stdint.h"
#include "esp_err.h"
#include "driver/spi_master.h"
#include "../lvgl/lv_misc/lv_color.h"
void display_flush(int32_t x1, int32_t y1, int32_t x2, int32_t y2, const lv_color_t *color_map);

#endif /* ESP32_SPI_ILI9341_APP_MAIN_ILI9341_DISPLAY_H_ */
