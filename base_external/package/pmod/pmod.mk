PMOD_SITE = $(TOPDIR)/../pmod
PMOD_SITE_METHOD = local

$(eval $(kernel-module))

define PMOD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define PMOD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/pmod $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/pmod_app-start-stop $(TARGET_DIR)/etc/init.d/S99pmod
endef

$(eval $(generic-package))
