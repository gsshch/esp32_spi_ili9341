deps_config := \
	/home/guo/git/esp32_project/esp-idf/components/app_trace/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/aws_iot/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/bt/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/driver/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/esp32/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/esp_adc_cal/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/ethernet/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/fatfs/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/freertos/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/heap/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/libsodium/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/log/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/lwip/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/mbedtls/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/openssl/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/pthread/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/spi_flash/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/spiffs/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/tcpip_adapter/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/wear_levelling/Kconfig \
	/home/guo/git/esp32_project/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/guo/git/esp32_project/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/guo/git/esp32_project/my_esp_idf_project/app/main/Kconfig.projbuild \
	/home/guo/git/esp32_project/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/guo/git/esp32_project/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
