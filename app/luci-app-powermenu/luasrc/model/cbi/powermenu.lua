require("luci.sys")
require("fs")

m = SimpleForm("powermenu", translate("Power Menu"),
	translate("Shutdown/restart your device"))

s = m:section(SimpleSection)

button_reboot = s:option (Button, "button_reboot", translate("Reboot"), translatef("Please wait a minutes until the device restart"))
button_reboot.inputtitle = translate ("Reboot")
button_reboot.write = function()
	fs.exec("reboot -f >/dev/null")
--	luci.sys.call("reboot -f >/dev/null")
end

button_shutdown = s:option (Button, "button_shutdown", translate("Shutdown"), translatef("Please wait for the device to shut down"))
button_shutdown.inputtitle = translate ("Shutdown")
button_shutdown.write = function()
	fs.exec("reboot -f >/dev/null")
--	luci.sys.call("poweroff -f >/dev/null")
end

m.reset  = false
m.submit  = false

return m
