hs.loadSpoon("EmmyLua")
require("hs.ipc")

hs.location.start()

require("wifi-manager")
require("autoreload")
require("weather")
require("bluetooth")
require("keymap")
require("sleep_watcher")
require("window-rules")
-- hs.notify.show({ "Hammerspoon", "Loaded",  "Ready to rock!! 🤘" })
print("Config loaded")

function bar(arg)
  print("Hello from bar! The arg is " .. arg)
end
