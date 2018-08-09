/*
 * lv_gui_task.c
 *
 *  Created on: 2018年8月9日
 *      Author: guo
 */

#include "lv_gui_task.h"
#include "../lv_conf.h"
#include "../lvgl/lvgl.h"
#include "stdlib.h"
#include "../lvgl/lv_misc/lv_color.h"
#include "../lvgl/lv_objx/lv_chart.h"
#include "ili9341_display.h"
#include "../lvgl/lv_themes/lv_theme_alien.h"
static lv_obj_t *chart = NULL;
static lv_chart_series_t *series = NULL;

void gui_init() {
	lv_init();
	lv_disp_drv_t disp_drv;
	lv_disp_drv_init(&disp_drv);
	disp_drv.disp_flush = display_flush;
	lv_disp_drv_register(&disp_drv);

	//Create a new Screen
	lv_obj_t *scr = lv_obj_create(NULL, NULL);
	lv_scr_load(scr);

	//Use alien theme
	lv_theme_t *th = lv_theme_alien_init(100, NULL);
	lv_theme_set_current(th);

	chart = lv_chart_create(scr, NULL);
	lv_obj_set_size(chart, 300, 200);
	lv_obj_align(chart, NULL, LV_ALIGN_CENTER, 0, 0);
	lv_chart_set_type(chart, LV_CHART_TYPE_POINT | LV_CHART_TYPE_LINE);
	lv_chart_set_series_opa(chart, LV_OPA_70);
	lv_chart_set_series_width(chart, 4);
	lv_chart_set_range(chart, 0, 100);
	series = lv_chart_add_series(chart, LV_COLOR_RED);
}
