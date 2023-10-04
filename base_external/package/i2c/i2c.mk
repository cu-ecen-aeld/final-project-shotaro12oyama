I2C_VERSION = 1d565809b98f04c1fa083e433804e6421f82cf87

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

$(eval $(generic-package))
