-- https://github.com/dlashua/hammerspoon-mqtt-sleepwatcher/blob/master/SleepWatch.spoon/init.lua#L185
local wh_was_connected = false
local notifications = true
local function notify(msg)
  hs.notify.show("Hammerspoon", "Sleep Watcher", msg)
end
local function sleepWatch(eventType)
  if eventType == hs.caffeinate.watcher.systemDidWake then
    if notifications then
      notify("System Wake!")
    end
  elseif eventType == hs.caffeinate.watcher.systemWillSleep then
    if notifications then
      notify("System Sleep")
    end
  elseif eventType == hs.caffeinate.watcher.systemWillPowerOff then
    if notifications then
      notify("System Power Off")
    end
  elseif eventType == hs.caffeinate.watcher.screensaverDidStart then
    if notifications then
      notify("Screensaver On")
    end
  elseif eventType == hs.caffeinate.watcher.screensaverDidStop then
    if notifications then
      notify("Screensaver Off")
    end
  elseif eventType == hs.caffeinate.watcher.screensDidLock then
    if notifications then
      notify("Screens Locked")
      IsWHConnected(function(connected)
        print("Connected:" .. tostring(connected))
        if connected then
          wh_was_connected = true
          DisconnectWH()
        end
      end)
    end
  elseif eventType == hs.caffeinate.watcher.screensDidSleep then
    if notifications then
      notify("Screens Sleep")
    end
  elseif eventType == hs.caffeinate.watcher.screensDidUnlock then
    if notifications then
      notify("Screens Unlocked")
      if wh_was_connected then
        wh_was_connected = false
        ConnectWH()
      end
    end
  elseif eventType == hs.caffeinate.watcher.screensDidWake then
    if notifications then
      notify("Screens Wake")
    end
  end
end
-- https://github.com/Hammerspoon/hammerspoon/issues/1942#issuecomment-430450705
-- stops working after some time, this would suggest garbage collection
local myWatcher = hs.caffeinate.watcher.new(function(eventType)
  sleepWatch(eventType)
end)
myWatcher:start()
hs.notify.show("Hammerspoon", "Loaded", "Sleep watcher loaded !! 🤘")
