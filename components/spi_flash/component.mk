COMPONENT_ADD_INCLUDEDIRS := include

CFLAGS += -fno-lto

ifdef IS_BOOTLOADER_BUILD
# Bootloader needs updated SPIUnlock from this file
COMPONENT_OBJS := spi_flash_rom_patch.o
endif
