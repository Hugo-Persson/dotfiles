-- if vim.env.PROF then
--   -- example for lazy.nvim
--   -- change this to the correct path for your plugin manager
--   local snacks = vim.fn.stdpath("data") .. "/lazy/snacks.nvim"
--   vim.opt.rtp:append(snacks)
--   require("snacks.profiler").startup({
--     startup = {
--       event = "VimEnter", -- stop profiler on this event. Defaults to `VimEnter`
--       -- event = "UIEnter",
--       -- event = "VeryLazy",
--     },
--   })
-- end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Adding .root for root detection
vim.g.root_spec = { "lsp", { ".root", ".git", "lua" }, "cwd" }
vim.api.nvim_command("set clipboard&vim")
vim.g.tmux_navigator_save_on_switch = 2
-- Load filetype detection from separate module
require("config.filetypes")
if vim.g.neovide then
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  vim.g.neovide_padding_top = 10
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 10
  vim.g.neovide_padding_left = 10
  vim.g.neovide_refresh_rate = 144

  -- vim.g.neovide_cursor_short_animation_length = 0.00
  -- vim.g.neovide_cursor_animation_length = 0.0
end

-- add new filetypes
vim.filetype.add({
  extension = {
    ojs = "javascript",
    pyodide = "python",
    webr = "r",
  },
})

vim.cmd("verbose set conceallevel=0")
vim.opt.foldmethod = "marker"
vim.opt.foldmarker = "=======,======="

vim.g.db_ui_save_location = "~/.config/nvim/dadbod_ui/"
