#!/bin/sh
# Shared definitions for buildroot scripts

BUILDROOT_EXTERNAL=../base_external
PMOD_DEFAULT_DEFCONFIG=/configs/raspberrypi3_defconfig
PI_CONFIG_TXT=${BUILDROOT_EXTERNAL}/configs/config.txt
PI_CMDLINE_TXT=${BUILDROOT_EXTERNAL}/configs/cmdline.txt
PMOD_MODIFIED_DEFCONFIG=base_external/configs/pmod_defconfig
PMOD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${PMOD_MODIFIED_DEFCONFIG}
