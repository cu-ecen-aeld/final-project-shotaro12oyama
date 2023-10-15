#!/bin/bash
#Script to build buildroot configuration

source shared.sh

EXTERNAL_REL_BUILDROOT=../base_external
git submodule init
git submodule sync
git submodule update

set -e
cd `dirname $0`

if [ ! -e buildroot/.config ]
then
	echo "MISSING BUILDROOT CONFIGURATION FILE"

	if [ -e ${PMOD_MODIFIED_DEFCONFIG} ]
	then
		echo "USING ${PMOD_MODIFIED_DEFCONFIG}"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${PMOD_MODIFIED_DEFCONFIG_REL_BUILDROOT} BR2_PACKAGE_RPI_FIRMWARE_CONFIG_FILE=${PI_CONFIG_TXT} BR2_PACKAGE_RPI_FIRMWARE_CMDLINE_FILE=${PI_CMDLINE_TXT}

	else
		echo "Run ./save_config.sh to save this as the default configuration in ${PMOD_MODIFIED_DEFCONFIG}"
		echo "Then add packages as needed to complete the installation, re-running ./save_config.sh as needed"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${PMOD_DEFAULT_DEFCONFIG}
	fi
else
	echo "USING EXISTING BUILDROOT CONFIG"
	echo "To force update, delete .config or make changes using make menuconfig and build again."
	make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} 2>&1 | tee make.log
fi
