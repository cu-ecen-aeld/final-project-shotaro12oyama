AESDCHAR_VERSION = 2f31560a26f6695e8e7062500463183df2edc90e

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
