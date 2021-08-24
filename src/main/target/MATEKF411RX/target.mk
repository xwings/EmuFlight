F411_TARGETS    += $(TARGET)

FEATURES        += VCP SDCARD

TARGET_SRC = \
            drivers/accgyro/accgyro_spi_mpu6000.c \
            drivers/max7456.c \
            drivers/rx/rx_cc2500.c \
						rx/cc2500_common.c \
            rx/cc2500_frsky_shared.c \
            rx/cc2500_frsky_d.c \
						rx/cc2500_frsky_x.c \
						rx/cc2500_redpine.c \
            rx/cc2500_sfhss.c
      

ifeq ($(TARGET), CRAZYBEEF4FS)
TARGET_SRC += \
            drivers/rx/rx_a7105.c \
            rx/flysky.c
endif

ifeq ($(TARGET), CRAZYBEEF4SX1280)
TARGET_SRC += \
            rx/expresslrs_common.c \
            rx/expresslrs.c \
            drivers/rx/rx_sx127x.c \
            drivers/rx/rx_sx1280.c      
endif