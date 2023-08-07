AESDCHAR_VERSION = e51ec640b6639e95466fa798a7f1a743469dcf57

AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-shotaro12oyama.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))

define AESDCHAR_INSTALL_TARGET_CMDS
	mkdir -p $(BR2_ROOTFS_OVERLAY)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(BR2_ROOTFS_OVERLAY)/bin/aesdchar_load
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(BR2_ROOTFS_OVERLAY)/bin/aesdchar_unload
endef

$(eval $(generic-package))
