-- Keybindings are configured here
-- They are loaded by init.lua

local map = vim.keymap.set

-- File finder
map('n', '<leader><leader>', function()
    vim.cmd('call VSCodeNotify("workbench.action.quickOpen")')
end, { desc = 'Find files' })
map('n', '<leader>f', function()
    vim.cmd('call VSCodeNotify("workbench.action.quickOpen")')
end, { desc = 'Find files' })

-- Global search
map('n', '<leader>/', function()
    vim.cmd('call VSCodeNotify("workbench.action.findInFiles")')
end, { desc = 'Search for text' })

-- Global search and replace
map('n', '<leader>sr', function()
    vim.cmd('call VSCodeNotify("workbench.action.replaceInFiles")')
end, { desc = 'Search and replace' })

-- Close other tabs (editors) in current group
map('n', '<leader>bo', function()
  vim.cmd('call VSCodeNotify("workbench.action.closeOtherEditors")')
end, { desc = 'Close other tabs' })

-- Keybinding for TypeScript files
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'typescript', 'typescriptreact' },
  callback = function(args)
    map('n', '<leader>oi', function()
      vim.cmd('call VSCodeNotify("editor.action.organizeImports")')
    end, { buffer = args.buf, desc = 'Organize Imports' })
  end,
  desc = 'Setup keybindings for TS files',
})
