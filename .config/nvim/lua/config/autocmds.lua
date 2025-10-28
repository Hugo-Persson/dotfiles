-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end
vim.api.nvim_create_autocmd("FileType", {
  desc = "Markdown keymaps",
  group = augroup("markdown"),
  pattern = { "markdown", "quarto", "typst" },
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

-- Optimize performance for large files
local function optimize_for_large_files()
  local file_path = vim.api.nvim_buf_get_name(0)
  if file_path == "" then return end
  
  local file_size = vim.fn.getfsize(file_path)
  local max_size = 1024 * 1024 -- 1MB threshold
  
  if file_size > max_size then
    -- Disable heavy features for large files
    vim.opt_local.syntax = "off"
    vim.opt_local.foldmethod = "manual"
    vim.opt_local.swapfile = false
    vim.opt_local.undofile = false
    vim.opt_local.wrap = false
    vim.opt_local.cursorline = false
    vim.opt_local.cursorcolumn = false
    vim.opt_local.relativenumber = false
    
    -- Disable LSP for large files
    vim.cmd("LspStop")
    
    -- Disable treesitter for large files
    local ok, treesitter = pcall(require, "nvim-treesitter.configs")
    if ok then
      vim.cmd("TSBufDisable highlight")
      vim.cmd("TSBufDisable indent")
      vim.cmd("TSBufDisable incremental_selection")
    end
    
    -- Show notification
    vim.notify("Large file detected (" .. math.floor(file_size / 1024) .. "KB). Performance optimizations applied.", vim.log.levels.INFO)
  end
end

vim.api.nvim_create_autocmd({"BufReadPre", "FileReadPre"}, {
  group = augroup("large_file_optimizations"),
  callback = optimize_for_large_files,
})

-- Special handling for JSON files
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("json_optimizations"),
  pattern = {"json", "jsonc"},
  callback = function()
    local file_size = vim.fn.getfsize(vim.api.nvim_buf_get_name(0))
    local max_json_size = 512 * 1024 -- 512KB for JSON files
    
    if file_size > max_json_size then
      -- Additional JSON-specific optimizations
      vim.opt_local.conceallevel = 0
      vim.opt_local.concealcursor = ""
      vim.opt_local.foldlevel = 999 -- Don't fold by default
      
      -- Disable completion for large JSON files
      if vim.fn.exists(":BlinkDisable") == 2 then
        vim.cmd("BlinkDisable")
      end
    end
  end,
})

-- -- Disable lazygit
-- vim.api.nvim_create_autocmd("User", {
--   pattern = "LazyVimKeymaps",
--   once = true,
--   callback = function()
--     pcall(vim.keymap.del, "n", "<leader>gf")
--     pcall(vim.keymap.del, "n", "<leader>gl")
--     pcall(vim.keymap.del, "n", "<leader>gg")
--     pcall(vim.keymap.del, "n", "<leader>gG")
--     pcall(vim.keymap.del, "n", "<leader>gL")
--   end,
-- })
