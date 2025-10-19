-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set a default theme rather than running an external command at startup
local default_theme = "dark"
local theme_file = vim.fn.expand("~/.cache/nvim/last_theme")

-- Try to read the last used theme
local ok, last_theme = pcall(function()
  return vim.fn.readfile(theme_file)[1]
end)

-- Set theme to last used theme or default
vim.go.background = (ok and (last_theme == "light" or last_theme == "dark")) and last_theme or default_theme

-- Function to save the theme when it changes
local function save_theme()
  vim.fn.mkdir(vim.fn.fnamemodify(theme_file, ":h"), "p")
  vim.fn.writefile({ vim.go.background }, theme_file)
end

-- Save theme when it changes
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = save_theme,
})

function SetTheme()
  local theme = vim.fn.system("getTheme")
  theme = string.gsub(theme, "\n", "")
  if theme ~= "dark" and theme ~= "light" then
    theme = "dark"
  end
  vim.go.background = theme
end

vim.api.nvim_create_user_command("SetTheme", SetTheme, {})

-- Defer highlight settings to VimEnter
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.api.nvim_set_hl(0, "DiffText", { fg = "#ffffff", bg = "#7d3b40" })
    vim.api.nvim_set_hl(0, "DiffAdd", { fg = "#ffffff", bg = "#1d3450" })
  end,
})

function GetColorScheme()
  -- Use the current background setting instead of calling GetTheme() which is slow
  local theme = vim.go.background
  if theme == "dark" then
    return require("catppuccin.palettes").get_palette("mocha")
  else
    return require("catppuccin.palettes").get_palette("latte")
  end
end

vim.g.copilot_nes = true
