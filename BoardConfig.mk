# inherit from the proprietary version
-include vendor/huawei/hws10201l/BoardConfigVendor.mk

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := hws10201l

# Platform
TARGET_BOARD_PLATFORM := unknown

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Camera

USE_CAMERA_STUB := true

# Kernel

BOARD_KERNEL_CMDLINE := console=ttyS0 k3v2_pmem=1 vmalloc=512M androidboot.hardware=hws10201l mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(logo),p8(vrcb),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnv),p14(modemnvm2),p15(cache),p16(system),p17(cust),p18(userdata),p19(reserve1),p20(reserve2),p21(lowpower),p22(data);mmcblk1:p1(sdcard2)
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/huawei/hws10201l/kernel

# Filesystem

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072



BOARD_HAS_NO_SELECT_BUTTON := true
