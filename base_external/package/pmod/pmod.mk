PMOD_VERSION = d182aae407c23cd6c26ffff131629d6d0d61ee6e
PMOD_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-shotaro12oyama.git
PMOD_SITE_METHOD = git
PMOD_GIT_SUBMODULES = YES
PMOD_MODULE_SUBDIRS = pmod

$(eval $(kernel-module))


define PMOD_INSTALL_TARGET_CMDS
	mkdir -p $(BR2_ROOTFS_OVERLAY)/bin
	$(INSTALL) -m 0755 $(PMOD_SRCDIR)/pmod/pmod_app.ko $(BR2_ROOTFS_OVERLAY)/bin/pmod_app.ko
	$(INSTALL) -m 0755 $(PMOD_SRCDIR)/pmod/pmod_load $(BR2_ROOTFS_OVERLAY)/bin/pmod_load
	$(INSTALL) -m 0755 $(PMOD_SRCDIR)/pmod/pmod_unload $(BR2_ROOTFS_OVERLAY)/bin/pmod_unload
	sudo $(INSTALL) -m 0755 $(PMOD_SRCDIR)/pmod/pmod-start-stop $(BR@_ROOTFS_OVERLAY)/etc/init.d/S99pmod
endef

$(eval $(generic-package))
