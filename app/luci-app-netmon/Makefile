include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-netmon
PKG_VERSION:=1.0
LUCI_TITLE:=LuCI Net Monitor
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+php8 +php8-cgi +php8-mod-session +zoneinfo-core +zoneinfo-asia +netdata +vnstat2 +vnstati2

define Package/$(PKG_NAME)
	$(call Package/luci/webtemplate)
	TITLE:=$(LUCI_TITLE)
	DEPENDS:=$(LUCI_DEPENDS)
endef

define Package/$(PKG_NAME)/description
	LuCI Network Monitor
	Simple network monitor using Netdata and Vnstat2
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	$(INSTALL_DATA) ./luasrc/* $(1)/usr/lib/lua/luci
	
	$(INSTALL_DIR) $(1)/
	$(INSTALL_DATA) ./root/* $(1)/
endef

define Package/$(PKG_NAME)/postrm
#!/bin/sh
if [ -d /www/netmon ] ; then
	rm -rf /www/netmon
fi
exit 0
endef

include $(TOPDIR)/feeds/luci/luci.mk
#$(eval $(call BuildPackage,$(PKG_NAME)))
