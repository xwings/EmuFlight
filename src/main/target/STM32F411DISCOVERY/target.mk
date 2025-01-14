F411_TARGETS    += $(TARGET)
FEATURES        += VCP SDCARD_SPI ONBOARDFLASH

TARGET_SRC = \
            drivers/accgyro_legacy/accgyro_l3gd20.c \
            drivers/accgyro_legacy/accgyro_lsm303dlhc.c \
            drivers/compass/compass_hmc5883l.c \
            drivers/compass/compass_qmc5883l.c

TARGET_SRC += \
            rx/expresslrs_common.c \
            rx/expresslrs.c \
            drivers/rx/rx_sx127x.c \
            drivers/rx/rx_sx1280.c