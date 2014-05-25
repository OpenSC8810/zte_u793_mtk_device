USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/u793/BoardConfigVendor.mk
TARGET_ARCH :=arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sprdbp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := u793

BOARD_KERNEL_CMDLINE := mem=239M console=ttyS1,115200n8 init=/init mtdparts=sprd-nand:384k@256k(2ndbl),256k(params),256k(pt),10m(boot),10m(recovery),120m(system),60m(sps),10m(factory),2m(cache),256k(misc),20m(fota),20m(cp),-(userdata)
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bc00000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/zte/u793/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/u793/kernel
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/u793/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS           := ../../../device/zte/u793/recovery/graphics.c

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
