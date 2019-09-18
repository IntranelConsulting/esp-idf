#
# Component Makefile
#

COMPONENT_ADD_LDFLAGS += -Wl,--undefined=uxTopUsedPriority
COMPONENT_ADD_INCLUDEDIRS := include
COMPONENT_PRIV_INCLUDEDIRS := include/freertos

tasks.o port.o: CFLAGS += -fno-lto
xtensa_init.o xtensa_intr.o event_groups.o queue.o list.o: CFLAGS += -fno-lto

tasks.o event_groups.o timers.o queue.o: CFLAGS += -D_ESP_FREERTOS_INTERNAL
