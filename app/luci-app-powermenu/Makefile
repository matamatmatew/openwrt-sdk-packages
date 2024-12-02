#
# Copyright (C) 2021 Helmi Amirudin <helmilaw@gmail.com>
# This is free software, licensed under the Apache License, Version 2.0
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI Power Menu to Shutdown/Reboot Your Router
LUCI_PKGARCH:=all
PKG_NAME:=luci-app-powermenu
PKG_VERSION:=1.1
PKG_RELEASE:=1

define Package/$(PKG_NAME)
	$(call Package/luci/webtemplate)
	TITLE:=$(LUCI_TITLE)
endef

define Package/$(PKG_NAME)/description
	Simple turn off your router with this app.
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	$(INSTALL_DATA) ./luasrc/* $(1)/usr/lib/lua/luci
	
	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	$(INSTALL_DATA) ./root/usr/share/rpcd/acl.d/* $(1)/usr/share/rpcd/acl.d/
endef

include $(TOPDIR)/feeds/luci/luci.mk

#$(eval $(call BuildPackage,$(PKG_NAME)))
