#!/bin/bash

adb reboot bootloader
fastboot oem fb_mode_set
fastboot flash partition gpt.bin
fastboot flash dsp adspso.bin
fastboot flash bootloader bootloader.img
fastboot flash recovery recovery.img
fastboot flash logo logo.bin
fastboot flash boot boot.img
fastboot flash modem NON-HLOS.bin
fastboot erase modemst1
fastboot erase modemst2
fastboot flash fsg fsg.mbn
fastboot flash system system.img_sparsechunk.0
fastboot flash system system.img_sparsechunk.1
fastboot flash system system.img_sparsechunk.2
fastboot flash system system.img_sparsechunk.3
fastboot flash system system.img_sparsechunk.4
fastboot erase DDR
fastboot erase cache
fastboot erase userdata
fastboot flash oem oem.img
fastboot flash vendor vendor.img
fastboot oem fb_mode_clear 
