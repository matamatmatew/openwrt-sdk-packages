local NXFS = require "nixio.fs"

m = Map("Network Monitor")
s = m:section(SimpleSection, "Network Monitor")
m.pageaction = false
s.anonymous = true
m.template="netmon/netmon"

return m

