module("luci.controller.netmon", package.seeall)

function index()
	entry({"admin", "status", "netmon"}, alias("admin", "status", "netmon", "status"), _("Network Monitor"), 14).dependent = false

	entry({"admin", "status", "netmon", "status"}, cbi("netmon/status"), _("Status"), 1).leaf = true
	entry({"admin", "status", "netmon", "config"}, cbi("netmon/config"), _("Configuration"), 2).leaf = true
end
