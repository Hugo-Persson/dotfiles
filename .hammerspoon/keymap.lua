local chooser = require("hs.chooser")
local overlayModule = require("hotkey-overlay")
---
--- @class Binding
--- @field header string
--- @field items string[]

--- @type Binding
local hyperkeyBindings = overlayModule.hyperkeyBindings

--- @type Binding
local altBindings = overlayModule.altBindings

--- @type Binding
local altShiftBindings = overlayModule.altShiftBindings

--- @type Binding
local ctrlAltBindings = overlayModule.ctrlAltBindings

print(hs.inspect(altBindings))

local function hyperKey(key, description, callback)
  hyperkeyBindings.items[#hyperkeyBindings.items + 1] = key .. ": " .. description
  hs.hotkey.bind({ "cmd", "alt", "ctrl", "shift" }, key, callback)
end
local function hyperKeyRepeat(key, callback)
  hs.hotkey.bind({ "cmd", "alt", "ctrl", "shift" }, key, function() end, function() end, callback)
end

local function shiftAltKey(key, description, callback)
  hs.hotkey.bind({ "alt", "shift" }, key, callback)
end

local function ctrlAltKey(key, description, callback)
  hs.hotkey.bind({ "alt", "ctrl" }, key, callback)
end

local function altKey(key, description, callback)
  hs.hotkey.bind({ "alt" }, key, callback)
end

local function focusWezTerm()
  local app = hs.application.find("WezTerm")
  if app:isFrontmost() then
    print("WezTerm is frontmost, focusing recent space")
    yabai({ "-m", "space", "--focus", "recent" })
  else
    hs.application.launchOrFocus("WezTerm")
  end
end
local function focusArc()
  GetWindowsByFocusedScreen(function(windows, error)
    if error then
      print("Failed to get windows: " .. error)
    else
      for index, window in ipairs(windows) do
        if window["app"] == "Arc" then
          yabai({ "-m", "window", "--focus", (window.id .. "") })
          break
        end
      end
    end
  end)
end

hyperKey("h", "Toggles WH", function()
  print(ToggleWH())
end)
local pixelIncrement = 30
-- hyperKey("q", "Toggles focus on WezTerm", focusWezTerm)
-- hyperKey("l", "Toggles focus between last space", function()
--   yabai({ "-m", "space", "--focus", "recent" })
-- end)
-- hyperKey("Right", "Increases size to right", function()
--   yabai({ "-m", "window", "--resize", "right:" .. pixelIncrement .. ":0" })
-- end)
-- hyperKey("Left", "Increases size to left", function()
--   yabai({ "-m", "window", "--resize", "right:" .. -1 * pixelIncrement .. ":0" })
-- end)
-- hyperKey("Up", "Increases size for current window up", function()
--   yabai({ "-m", "window", "--resize", "top:" .. pixelIncrement .. ":0" })
-- end)
-- hyperKey("Down", "Increases size down for current window", function()
--   yabai({ "-m", "window", "--resize", "bottom:" .. -1 * pixelIncrement .. ":0" })
-- end)
--
-- hyperKey("Return", "Toggle fullscreen", function()
--   yabai({ "-m", "window", "--toggle", "zoom-fullscreen" })
-- end)
--
-- hyperKey("i", "Toggle window", function()
--   ToggleHotkeyOverlay()
-- end)
--
-- -- Changing Window Focus --
--
-- -- change window focus within space
-- altKey("j", "Focus window south", function()
--   yabai({ "-m", "window", "--focus", "south" })
-- end)
--
-- altKey("k", "Focus window north", function()
--   yabai({ "-m", "window", "--focus", "north" })
-- end)
--
-- altKey("h", "Focus window west", function()
--   yabai({ "-m", "window", "--focus", "west" })
-- end)
--
-- -- altKey("l", "Focus window east", function()
-- --   yabai({ "-m", "window", "--focus", "east" })
-- -- end)
--
-- -- change focus between external displays (left and right)
-- altKey("a", "Focus display west", function()
--   yabai({ "-m", "display", "--focus", "west" })
-- end)
--
-- altKey("d", "Focus display east", function()
--   yabai({ "-m", "display", "--focus", "east" })
-- end)
--
-- -- altKey("w", "Focus display north", function()
-- --   yabai({ "-m", "display", "--focus", "north" })
-- -- end)
-- --
-- -- altKey("s", "Focus display south", function()
-- --   yabai({ "-m", "display", "--focus", "south" })
-- -- end)
--
-- -- Modifying the Layout --
--
-- -- rotate layout clockwise
-- shiftAltKey("r", "Rotate layout clockwise", function()
--   yabai({ "-m", "space", "--rotate", "270" })
-- end)
--
-- -- flip along y-axis
-- shiftAltKey("y", "Mirror layout along y-axis", function()
--   yabai({ "-m", "space", "--mirror", "y-axis" })
-- end)
--
-- -- flip along x-axis
-- shiftAltKey("x", "Mirror layout along x-axis", function()
--   yabai({ "-m", "space", "--mirror", "x-axis" })
-- end)
--
-- -- toggle window float
-- shiftAltKey("t", "Toggle window float", function()
--   print("Toggling float")
--   yabai({ "-m", "window", "--toggle", "float", "--grid", "4:4:1:1:2:2" })
-- end)
--
-- -- Modifying Window Size --
--
-- -- maximize a window
-- shiftAltKey("m", "Maximize window", function()
--   yabai({ "-m", "window", "--toggle", "zoom-fullscreen" })
-- end)
--
-- -- balance out tree of windows (resize to occupy same area)
-- shiftAltKey("e", "Balance window tree", function()
--   yabai({ "-m", "space", "--balance" })
-- end)
--
-- -- Moving Windows Around --
--
-- -- swap windows
-- shiftAltKey("j", "Swap window south", function()
--   yabai({ "-m", "window", "--swap", "south" })
-- end)
--
-- shiftAltKey("k", "Swap window north", function()
--   yabai({ "-m", "window", "--swap", "north" })
-- end)
--
-- shiftAltKey("h", "Swap window west", function()
--   yabai({ "-m", "window", "--swap", "west" })
-- end)
--
-- shiftAltKey("l", "Swap window east", function()
--   yabai({ "-m", "window", "--swap", "east" })
-- end)
--
-- -- move window and split
-- ctrlAltKey("j", "Warp window south", function()
--   yabai({ "-m", "window", "--warp", "south" })
-- end)
--
-- ctrlAltKey("k", "Warp window north", function()
--   yabai({ "-m", "window", "--warp", "north" })
-- end)
--
-- ctrlAltKey("h", "Warp window west", function()
--   yabai({ "-m", "window", "--warp", "west" })
-- end)
--
-- ctrlAltKey("l", "Warp window east", function()
--   yabai({ "-m", "window", "--warp", "east" })
-- end)
--
-- -- move windows
-- shiftAltKey("a", "Move window to display west", function()
--   yabai({ "-m", "window", "--display", "west" })
--   yabai({ "-m", "display", "--focus", "west" })
-- end)
--
-- shiftAltKey("d", "Move window to display east", function()
--   yabai({ "-m", "window", "--display", "east" })
--   yabai({ "-m", "display", "--focus", "east" })
-- end)
--
-- shiftAltKey("w", "Move window to display north", function()
--   yabai({ "-m", "window", "--display", "north" })
--   yabai({ "-m", "display", "--focus", "north" })
-- end)
--
-- shiftAltKey("s", "Move window to display south", function()
--   yabai({ "-m", "window", "--display", "south" })
--   yabai({ "-m", "display", "--focus", "south" })
-- end)
--
-- -- move window to prev and next space
-- shiftAltKey("p", "Move window to previous space", function()
--   yabai({ "-m", "window", "--space", "prev" })
-- end)
--
-- shiftAltKey("n", "Move window to next space", function()
--   yabai({ "-m", "window", "--space", "next" })
-- end)
--
-- -- move window to space #
-- shiftAltKey("1", "Move window to space 1", function()
--   yabai({ "-m", "window", "--space", "1" })
-- end)
--
-- shiftAltKey("2", "Move window to space 2", function()
--   yabai({ "-m", "window", "--space", "2" })
-- end)
--
-- shiftAltKey("3", "Move window to space 3", function()
--   yabai({ "-m", "window", "--space", "3" })
-- end)
--
-- shiftAltKey("4", "Move window to space 4", function()
--   yabai({ "-m", "window", "--space", "4" })
-- end)
--
-- shiftAltKey("5", "Move window to space 5", function()
--   yabai({ "-m", "window", "--space", "5" })
-- end)
--
-- shiftAltKey("6", "Move window to space 6", function()
--   yabai({ "-m", "window", "--space", "6" })
-- end)
--
-- -- Starting/Stopping/Restarting Yabai --
--
-- -- stop/start/restart yabai
-- ctrlAltKey("q", "Stop Yabai services", function()
--   yabai({ "--stop-services" })
-- end)
--
-- ctrlAltKey("s", "Start Yabai services", function()
--   yabai({ "--start-services" })
-- end)
--
-- ctrlAltKey("r", "Restart Yabai services", function()
--   yabai({ "--restart-services" })
-- end)
-- hyperKey("m", "Switch max screen", function()
--   WindowTesting()
-- end)
-- hyperKey("b", "Focus browser", function()
--   focusArc()
-- end)
hyperKey("r", "Capture task", function()
  local url =
    "obsidian://advanced-uri?vault=second-brain&commandid=quickadd%253Achoice%253A6217440e-a0e1-46f4-b961-af8a3f157791"
  hs.urlevent.openURL(url)
end)

hyperKey("o", "Toggle terminal", function()
  localUrl = "obsidian://advanced-uri?vault=second-brain&filepath=Dashboard.md"
  hs.urlevent.openURL(localUrl)
end)

hyperKey("d", "Toggle terminal", function()
  localUrl = "obsidian://advanced-uri?vault=second-brain&daily=true"
  hs.urlevent.openURL(localUrl)
end)

-- hyperKey("p", "Choose actions", function()
-- 	-- Define the callback function
-- 	local function onChoice(choice)
-- 		if choice then
-- 			hs.alert.show("You selected: " .. choice.text)
-- 		else
-- 			hs.alert.show("You canceled the chooser")
-- 		end
-- 	end
--
-- 	-- Create the chooser with the callback function
-- 	local myChooser = chooser.new(onChoice)
--
-- 	-- Define the choices
-- 	local choices = {
-- 		{
-- 			["Restart Yabai"] = function()
-- 				yabai({ "--restart-services" })
-- 			end,
-- 		},
-- 		{ [""] = "Option 2" },
-- 		{ ["text"] = "Option 3" },
-- 	}
--
-- 	-- Set the choices for the chooser
-- 	myChooser:choices(choices)
--
-- 	-- Show the chooser
-- 	myChooser:show()
-- end)
