/*
 * ili9341_display.c
 *
 *  Created on: 2018年8月9日
 *      Author: guo
 */

#include "ili9341_display.h"
#include "../lvgl/lv_core/lv_vdb.h"
#include "spi_master_demo.h"
#define PARALLEL_LINES 16




//To send a set of lines, we have to send a command, 2 data bytes, another command, 2 more data bytes and another command
//before sending the line data itself; a total of 6 transactions. (We can't put all of this in just one transaction
//because the D/C line needs to be toggled in the middle.)
//This routine queues these commands up so they get sent as quickly as possible.
void display_flush(int32_t x1, int32_t y1, int32_t x2, int32_t y2, const lv_color_t *color_map)
{
    esp_err_t ret;
    spi_transaction_t trans[6];
    for (int x = 0; x < 6; x++)
    {
        memset(&trans[x], 0, sizeof(spi_transaction_t));
        if ((x & 1) == 0)
        {
            //Even transfers are commands
            trans[x].length = 8;
            trans[x].user = (void *)0;
        }
        else
        {
            //Odd transfers are data
            trans[x].length = 8 * 4;
            trans[x].user = (void *)1;
        }
        trans[x].flags = SPI_TRANS_USE_TXDATA;
    }

    uint32_t size = (x2 - x1 + 1) * (y2 - y1 + 1);
    uint8_t *color_u8 = (uint8_t *)color_map;
    for (uint32_t i = 0; i < size * 2; i += 2)
    {
        color_u8[i] ^= color_u8[i + 1];
        color_u8[i + 1] ^= color_u8[i];
        color_u8[i] ^= color_u8[i + 1];
    }

    trans[0].tx_data[0] = 0x2A;             //Column Address Set
    trans[1].tx_data[0] = (x1 >> 8) & 0xFF; //Start Col High
    trans[1].tx_data[1] = x1 & 0xFF;        //Start Col Low
    trans[1].tx_data[2] = (x2 >> 8) & 0xFF; //End Col High
    trans[1].tx_data[3] = x2 & 0xFF;        //End Col Low
    trans[2].tx_data[0] = 0x2B;             //Page address set
    trans[3].tx_data[0] = (y1 >> 8) & 0xFF; //Start page high
    trans[3].tx_data[1] = y1 & 0xFF;        //start page low
    trans[3].tx_data[2] = (y2 >> 8) & 0xFF; //end page high
    trans[3].tx_data[3] = y2 & 0xFF;        //end page low
    trans[4].tx_data[0] = 0x2C;             //memory write
    trans[5].tx_buffer = color_map;
    trans[5].flags = 0;
    trans[5].length = size * 2 * 8;

    //Queue all transactions.
    for (int x = 0; x < 6; x++)
    {
        ret = spi_device_queue_trans(spi, &trans[x], portMAX_DELAY);
        assert(ret == ESP_OK);
    }
    spi_transaction_t *rtrans;
    for (int x = 0; x < 6; x++)
    {
        ret = spi_device_get_trans_result(spi, &rtrans, portMAX_DELAY);
        assert(ret == ESP_OK);
    }

    lv_flush_ready();
}
