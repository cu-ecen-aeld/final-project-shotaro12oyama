PMOD_VERSION = af85e123d3e3514f9d91b056e3d8397f33a1989c
PMOD_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-shotaro12oyama.git
PMOD_SITE_METHOD = git
PMOD_GIT_SUBMODULES = YES
PMOD_MODULE_SUBDIRS = pmod

$(eval $(kernel-module))

define PMOD_INSTALL_TARGET_CMDS
	mkdir -p $(BR2_ROOTFS_OVERLAY)/usr/bin
	$(INSTALL) -m 0755 $(PMOD_SRCDIR)/pmod/test.sh $(BR2_ROOTFS_OVERLAY)/usr/bin/test.sh
	$(INSTALL) -m 0755 $(PMOD_SRCDIR)/pmod/pmod_app.ko $(BR2_ROOTFS_OVERLAY)/usr/bin/pmod_app.ko
	$(INSTALL) -m 0755 $(PMOD_SRCDIR)/pmod/pmod_load $(BR2_ROOTFS_OVERLAY)/usr/bin/pmod_load
	$(INSTALL) -m 0755 $(PMOD_SRCDIR)/pmod/pmod_unload $(BR2_ROOTFS_OVERLAY)/usr/bin/pmod_unload
endef

$(eval $(generic-package))
