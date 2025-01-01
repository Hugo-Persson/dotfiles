-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end
vim.notify("Autocmds loaded")
vim.api.nvim_create_autocmd("FileType", {
  desc = "Markdown keymaps",
  group = augroup("markdown"),
  pattern = { "markdown" },
  callback = function()
    require("config.markdown-keymaps")()
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = { "XcodebuildBuildFinished", "XcodebuildTestsFinished" },
  callback = function(event)
    if event.data.cancelled then
      return
    end

    if event.data.success then
      require("trouble").close()
    elseif not event.data.failedCount or event.data.failedCount > 0 then
      if next(vim.fn.getqflist()) then
        require("trouble").open("quickfix")
      else
        require("trouble").close()
      end

      require("trouble").refresh()
    end
  end,
})

-- Disable lazygit
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimKeymaps",
  once = true,
  callback = function()
    pcall(vim.keymap.del, "n", "<leader>gf")
    pcall(vim.keymap.del, "n", "<leader>gl")
    pcall(vim.keymap.del, "n", "<leader>gg")
    pcall(vim.keymap.del, "n", "<leader>gG")
    pcall(vim.keymap.del, "n", "<leader>gL")
  end,
})
