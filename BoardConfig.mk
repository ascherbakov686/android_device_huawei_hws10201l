# inherit from the proprietary version
-include vendor/huawei/hws10201l/BoardConfigVendor.mk

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := hws10201l

# Platform
TARGET_BOARD_PLATFORM := k3v200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true

# Flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Camera
USE_CAMERA_STUB := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0 k3v2_pmem=1 vmalloc=512M androidboot.hardware=hws10201l mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(logo),p8(vrcb),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnv),p14(modemnvm2),p15(cache),p16(system),p17(cust),p18(userdata),p19(reserve1),p20(reserve2),p21(lowpower),p22(data);mmcblk1:p1(sdcard2)
BOARD_KERNEL_BASE := 0x00000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/huawei/hws10201l/kernel # 3.0.8

# Filesystem
# You can get this by multiply /sys/class/block/mmcblk0p11/size * 512 bytes
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608 # 8 Mb, double check with busybox fdisk -l /dev/block/mmcblk0p11
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 # 16 Mb, double check with busybox fdisk -l /dev/block/mmcblk0p10
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912 # 536 Mb, busybox fdisk -l /dev/block/mmcblk0p16
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14151581696 # 14.1 Gb, busybox fdisk -l /dev/block/mmcblk0p22
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
