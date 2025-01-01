WifiWatcher = nil
HomeSSID = "Hugo_Wifi"
LastSSID = hs.wifi.currentNetwork()

function ssidChangedCallback()
	newSSID = hs.wifi.currentNetwork()

	if newSSID == HomeSSID and LastSSID ~= HomeSSID then
		-- We just joined our home WiFi network
		hs.audiodevice.defaultOutputDevice():setVolume(25)
	elseif newSSID ~= HomeSSID and LastSSID == HomeSSID then
		-- We just departed our home WiFi network
		hs.alert.show("Left home network")
		hs.audiodevice.defaultOutputDevice():setVolume(0)
	end

	LastSSID = newSSID
end

WifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
WifiWatcher:start()
