local wezterm = require("wezterm")

local M = {}
local ssh_domains = {}

for host, config in pairs(wezterm.enumerate_ssh_hosts()) do
	table.insert(ssh_domains, {
		-- the name can be anything you want; we're just using the hostname
		label = host,
		id = host,
	})
end

M.get_ssh_options = function()
	-- return {
	-- 					-- This is the first entry
	-- 					{
	-- 						-- Here we're using wezterm.format to color the text.
	-- 						-- You can just use a string directly if you don't want
	-- 						-- to control the colors
	-- 						label = wezterm.format({
	-- 							{ Foreground = { AnsiColor = "Red" } },
	-- 							{ Text = "No" },
	-- 							{ Foreground = { AnsiColor = "Green" } },
	-- 							{ Text = " thanks" },
	-- 						}),
	-- 						-- This is the text that we'll send to the terminal when
	-- 						-- this entry is selected
	-- 						id = "Regretfully, I decline this offer.",
	-- 					},
	-- 					-- This is the second entry
	-- 					{
	-- 						label = "WTF?",
	-- 						id = "An interesting idea, but I have some questions about it.",
	-- 					},
	-- 					-- This is the third entry
	-- 					{
	-- 						label = "LGTM",
	-- 						id = "This sounds like the right choice",
	-- 					},
	-- 				}
	return ssh_domains
end

return M
