-- Import necessary modules
local screen = require("hs.screen")
local drawing = require("hs.drawing")

-- Define your tables
local hyperkeyBindings = { header = "HyperKey", items = {} }
local altBindings = { header = "alt", items = {} }
local altShiftBindings = { header = "alt + shift", items = { "Item 2.1", "Item 2.2", "Item 2.3" } }
local ctrlAltBindings = { header = "ctrl + alt", items = { "Item 3.1", "Item 3.2", "Item 3.3" } }

local tables = { hyperkeyBindings, altBindings, altShiftBindings, ctrlAltBindings }

local overlayObjects = nil

-- Function to create the overlay
local function createOverlay()
	-- Get the primary screen and its dimensions
	local primaryScreen = screen.primaryScreen()
	local screenFrame = primaryScreen:frame()

	-- Define overlay dimensions and position
	local overlayWidth = 900
	local overlayHeight = 400
	local overlayX = (screenFrame.w - overlayWidth) / 2
	local overlayY = (screenFrame.h - overlayHeight) / 2

	-- Create a rectangle for the overlay background
	local overlay = drawing.rectangle({
		x = overlayX,
		y = overlayY,
		w = overlayWidth,
		h = overlayHeight,
	})
	overlay:setFillColor({ red = 0, green = 0, blue = 0, alpha = 0.7 })
	overlay:setRoundedRectRadii(10, 10)
	overlay:setLevel(drawing.windowLevels.overlay)
	overlay:setStroke(false)
	overlay:show()

	-- Store overlay objects for later deletion
	overlayObjects = { overlay }

	-- Define column width and start position
	local columnWidth = overlayWidth / 3
	local columnX = overlayX + 10

	-- Create text for each column
	for _, tbl in ipairs(tables) do
		-- Create header text
		local header = drawing.text({
			x = columnX,
			y = overlayY + 20,
			w = columnWidth,
			h = 30,
		}, tbl.header)
		header:setTextSize(24)
		header:setTextColor({ red = 1, green = 1, blue = 1, alpha = 1 })
		header:setTextStyle({ alignment = "center" })
		header:setLevel(drawing.windowLevels.overlay)
		header:show()
		table.insert(overlayObjects, header)

		-- Create items text
		for i, item in ipairs(tbl.items) do
			local itemText = drawing.text({
				x = columnX,
				y = overlayY + 60 + (i - 1) * 30,
				w = columnWidth,
				h = 30,
			}, item)
			itemText:setTextSize(18)
			itemText:setTextColor({ red = 1, green = 1, blue = 1, alpha = 1 })
			itemText:setTextStyle({ alignment = "left" })
			itemText:setLevel(drawing.windowLevels.overlay)
			itemText:show()
			table.insert(overlayObjects, itemText)
		end

		-- Move to the next column
		columnX = columnX + columnWidth
	end
end

-- Function to destroy the overlay
local function destroyOverlay()
	if overlayObjects then
		for _, obj in pairs(overlayObjects) do
			obj:delete()
		end
		overlayObjects = nil
	end
end

function ToggleHotkeyOverlay()
	if overlayObjects then
		destroyOverlay()
	else
		createOverlay()
	end
end
return {
	hyperkeyBindings = hyperkeyBindings,
	altBindings = altBindings,
	altShiftBindings = altShiftBindings,
	ctrlAltBindings = ctrlAltBindings,
}
