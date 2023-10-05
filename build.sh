#!/bin/bash
#Script to build buildroot configuration

source shared.sh

make -C buildroot BR2_EXTERNAL=${BUILDROOT_EXTERNAL} BR2_DEFCONFIG=${PMOD_DEFCONFIG} BR2_PACKAGE_RPI_FIRMWARE_CONFIG_FILE=${PI_CONFIG_TXT} BR2_PACKAGE_RPI_FIRMWARE_CMDLINE_FILE=${PI_CMDLINE_TXT}

if [ ! -e buildroot/.config ]
then
	echo "MISSING BUILDROOT CONFIGURATION FILE"
	echo "USING ${PMOD_DEFCONFIG}"
		make -C buildroot defconfig BR2_EXTERNAL=${BUILDROOT_EXTERNAL} BR2_DEFCONFIG=${PMOD_DEFCONFIG}
else
	echo "USING EXISTING BUILDROOT CONFIG"
	echo "To force update, delete .config or make changes using make menuconfig and build again."
	make -C buildroot BR2_EXTERNAL=${BUILDROOT_EXTERNAL} 2>&1 | tee make.log

fi
