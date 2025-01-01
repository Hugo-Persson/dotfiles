local shellutil = require("shell-util")
local wh_headset_mac = "88-c9-e8-47-a1-55"
function ConnectWH()
  shellutil("/opt/homebrew/bin/blueutil", { "--connect", wh_headset_mac }, function(output, error)
    print("Output:" .. output)
    print("Error:" .. error)
    hs.alert.show("Connected WH-1000XM4")
  end)
end

function DisconnectWH()
  shellutil("/opt/homebrew/bin/blueutil", { "--disconnect", wh_headset_mac }, function(output, error)
    print("Output:" .. output)
    print("Error:" .. error)
    hs.alert.show("Disconnecting WH-1000XM4")
  end)
end
--- Check wheter wh headset is connected
---@param callback function(boolean):void
function IsWHConnected(callback)
  shellutil("/opt/homebrew/bin/blueutil", { "--is-connected", wh_headset_mac }, function(output, error)
    print("Output:" .. output)
    print("Error:" .. error)
    callback(string.sub(output, 1, 1) == "1")
  end)
end

function ToggleWH()
  shellutil("/opt/homebrew/bin/blueutil", { "--is-connected", wh_headset_mac }, function(output, error)
    print("Output!!!:" .. output)
    print("Error:" .. error)
    if string.sub(output, 1, 1) == "1" then
      print("Disconnecting")
      hs.alert.show("Disconnecting WH-1000XM4")
      DisconnectWH()
    else
      hs.alert.show("Connecting WH-1000XM4")
      ConnectWH()
    end
  end)
end
