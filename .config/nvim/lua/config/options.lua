-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Execute the shell command and capture its output
function GetTheme()
  local theme = vim.fn.system("getTheme")
  theme = string.gsub(theme, "\n", "")
  return theme
end

function SetTheme()
  if vim.fn.has("mac") == 0 then
    vim.go.background = GetTheme()
  end
end
-- Strip trailing newline characters from the output
-- Set theme from the shell command output if not on mac
SetTheme()
vim.api.nvim_create_user_command("SetTheme", SetTheme, {})
vim.api.nvim_set_hl(0, "DiffText", { fg = "#ffffff", bg = "#7d3b40" })
vim.api.nvim_set_hl(0, "DiffAdd", { fg = "#ffffff", bg = "#1d3450" })
