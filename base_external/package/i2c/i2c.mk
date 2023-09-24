I2C_VERSION = a90f1de0cbfac54e8d349a2493503d3ec15b094d

I2C_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-shotaro12oyama.git
I2C_SITE_METHOD = git
I2C_GIT_SUBMODULES = YES
I2C_MODULE_SUBDIRS = i2c

$(eval $(kernel-module))

define I2C_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/i2c all
endef

define I2C_INSTALL_TARGET_CMDS
	mkdir -p $(BR2_ROOTFS_OVERLAY)/bin
	$(INSTALL) -m 0755 $(@D)/i2c/pmod_hygro $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/i2c/pmod_load $(BR2_ROOTFS_OVERLAY)/bin/pmod_load
	$(INSTALL) -m 0755 $(@D)/i2c/pmod_unload $(BR2_ROOTFS_OVERLAY)/bin/pmod_unload
endef

