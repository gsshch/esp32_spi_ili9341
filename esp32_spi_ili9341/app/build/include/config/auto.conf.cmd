deps_config := \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/app_trace/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/aws_iot/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/bt/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/driver/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/esp32/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/esp_adc_cal/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/ethernet/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/fatfs/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/freertos/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/heap/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/libsodium/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/log/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/lwip/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/mbedtls/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/openssl/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/pthread/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/spi_flash/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/spiffs/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/tcpip_adapter/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/wear_levelling/Kconfig \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/bootloader/Kconfig.projbuild \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/esptool_py/Kconfig.projbuild \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/app/main/Kconfig.projbuild \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/components/partition_table/Kconfig.projbuild \
	/home/guo/git/esp32_project/esp32_spi_ili9341/esp32_spi_ili9341/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
