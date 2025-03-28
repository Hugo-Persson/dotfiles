-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Execute the shell command and capture its output
function GetTheme()
  local theme = vim.fn.system("getTheme")
  theme = string.gsub(theme, "\n", "")
  if theme ~= "dark" and theme ~= "light" then
    theme = "dark"
  end
  return theme
end

function SetTheme()
  vim.go.background = GetTheme()
end
-- Strip trailing newline characters from the output
-- Set theme from the shell command output if not on mac
SetTheme()
vim.api.nvim_create_user_command("SetTheme", SetTheme, {})

vim.api.nvim_set_hl(0, "DiffText", { fg = "#ffffff", bg = "#7d3b40" })
vim.api.nvim_set_hl(0, "DiffAdd", { fg = "#ffffff", bg = "#1d3450" })

function GetColorScheme()
  local theme = GetTheme()
  if theme == "dark" then
    return require("catppuccin.palettes").get_palette("mocha")
  else
    return require("catppuccin.palettes").get_palette("latte")
  end
end
