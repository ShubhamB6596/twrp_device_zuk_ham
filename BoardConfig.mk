#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/zuk/ham

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER         := true
TARGET_NO_RADIOIMAGE         := true

# Platform
TARGET_BOARD_PLATFORM     := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_ARCH                := arm
TARGET_ARCH_VARIANT        := armv7-a-neon
TARGET_CPU_ABI             := armeabi-v7a
TARGET_CPU_ABI2            := armeabi
TARGET_CPU_VARIANT         := krait
TARGET_CPU_SMP             := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_BASE     		   := 0x00000000
BOARD_KERNEL_PAGESIZE 		   := 2048
BOARD_MKBOOTIMG_ARGS  		   := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --kernel_offset 0x00008000 --dt device/zuk/ham/dt.img
BOARD_KERNEL_CMDLINE 		   := console=tty60,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 vmalloc=480M androidboot.selinux=permissive
TARGET_PREBUILT_KERNEL		   := $(DEVICE_PATH)/kernel

# Encryption
TARGET_HW_DISK_ENCRYPTION 	   := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE          := 20971520
BOARD_CACHEIMAGE_PARTITION_SIZE         := 134217728
BOARD_PERSISTIMAGE_PARTITION_SIZE       := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE        := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE      := 12815659008
BOARD_USERDATAEXTRAIMAGE_PARTITION_SIZE := 59718467072
BOARD_USERDATAEXTRAIMAGE_PARTITION_NAME := 64G
BOARD_OEMIMAGE_PARTITION_SIZE           := 133169152

# Filesystem
TARGET_USERIMAGES_USE_EXT4          := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_OEMIMAGE_FILE_SYSTEM_TYPE     := ext4
BOARD_FLASH_BLOCK_SIZE              := 131072
TARGET_USERIMAGES_USE_F2FS          := true

# TWRP flags
TARGET_RECOVERY_DEVICE_DIRS      := $(DEVICE_PATH)
TARGET_RECOVERY_FSTAB 		 := $(DEVICE_PATH)/twrp.fstab
DEVICE_RESOLUTION                := 1080x1920
TARGET_RECOVERY_PIXEL_FORMAT     := "RGBX_8888"
TW_INCLUDE_CRYPTO                := true
TARGET_RECOVERY_QCOM_RTC_FIX     := true
BOARD_SUPPRESS_SECURE_ERASE      := true
TW_NEW_ION_HEAP 		 := true
BOARD_HAS_NO_REAL_SDCARD         := true
BOARD_USE_CUSTOM_RECOVERY_FONT   := \"roboto_23x41.h\"
TW_INTERNAL_STORAGE_PATH         := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT  := "sdcard"
TW_FLASH_FROM_STORAGE            := true
TW_BRIGHTNESS_PATH               := /sys/class/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_SELECT_BUTTON       := true
BOARD_SUPPRESS_EMMC_WIPE         := true
TWRP_INCLUDE_LOGCAT 		 := true
TARGET_USES_LOGD		 := true
TW_EXCLUDE_SUPERSU 		 := true
TW_EXCLUDE_TWRPAPP		 := true
TW_CRYPTO_USE_SYSTEM_VOLD        := qseecomd
