-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set({
--   mode = "n",
--   keys = "<Tab>",
--   command = ":BufferNext",
--   options = { noremap = true, silent = true },
-- })
-- [";"] = { ":", "enter command mode", opts = { nowait = true } },
--     ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
--     ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
--     ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
--     ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
--     ["<leader>p"] = {
--       "_dP",
--       "Pastes but stores deleted text",
--     },
--     ["<leader>tf"] = {
--       function()
--         require("nvterm.terminal").toggle("float")
--       end,
--       "Toggle floating term",
--     },

local map = vim.keymap.set

map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { noremap = true, silent = true, desc = "Window right" })
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { noremap = true, silent = true, desc = "Window left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { noremap = true, silent = true, desc = "Window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { noremap = true, silent = true, desc = "Window up" })
map("n", "<leader>p", "_dP", { noremap = true, silent = true, desc = "Pastes but stores deleted text" })

map("n", "<leader><S-c>", '"*y""', { noremap = true, silent = true, desc = "Copy to system clipboard" })
map("v", "<leader><S-c>", '"*y""', { noremap = true, silent = true, desc = "Copy to system clipboard" })
map("n", "<leader>gq", ":GitConflictListQf<CR>", { noremap = true, silent = true })
map("n", "<leader>a", "mzggVG'z", { noremap = true, silent = true, desc = "Select all" })

map("n", "<C-c><C-g>", ":Cs f g <CR>")
map("n", "<leader>cp", ':let @+=expand("%:p")<CR>', { noremap = true, silent = true })

-- Open current file in finder
vim.keymap.set("n", "<leader>fO", function()
  local file_path = vim.fn.expand("%:p")
  if file_path ~= "" then
    local command = "open -R " .. vim.fn.shellescape(file_path)
    vim.fn.system(command)
    print("Opened file in Finder: " .. file_path)
  else
    print("No file is currently open")
  end
end, { desc = "[P]Open current file in Finder" })

-- Open current file in finder
vim.keymap.set("n", "<leader>fD", function()
  local file_path = vim.fn.expand("%:p")
  if file_path ~= "" then
    local command = "open -a Dropshelf " .. vim.fn.shellescape(file_path)
    vim.fn.system(command)
    print("Sent file to Dropshelf" .. file_path)
  else
    print("No file is currently open")
  end
end, { desc = "[P]Send current file to Dropshelf" })
