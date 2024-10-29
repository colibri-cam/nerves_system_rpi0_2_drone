################################################################################
#
# rtl8812au-wfb
#
################################################################################

RTL8812AU_WFB_SITE = $(call github,svpcom,rtl8812au,$(RTL8812AU_WFB_VERSION))
RTL8812AU_WFB_VERSION = f1f447e2e184167b70bed4884534a2c27f4aa16e

RTL8812AU_WFB_LICENSE = GPL-2.0
RTL8812AU_WFB_LICENSE_FILES = LICENSE 

RTL8812AU_WFB_MODULE_MAKE_OPTS = CONFIG_RTL8812AU=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))
