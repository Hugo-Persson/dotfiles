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

-- Folding
map('n', 'za', function()
  vim.cmd('call VSCodeNotify("editor.toggleFold")')
end, { desc = 'Toggle fold' })

map('n', 'zc', function()
  vim.cmd('call VSCodeNotify("editor.fold")')
end, { desc = 'Close fold' })

map('n', 'zo', function()
  vim.cmd('call VSCodeNotify("editor.unfold")')
end, { desc = 'Open fold' })

map('n', 'zC', function()
  vim.cmd('call VSCodeNotify("editor.foldRecursively")')
end, { desc = 'Close fold recursively' })

map('n', 'zO', function()
  vim.cmd('call VSCodeNotify("editor.unfoldRecursively")')
end, { desc = 'Open fold recursively' })

map('n', 'zR', function()
  vim.cmd('call VSCodeNotify("editor.unfoldAll")')
end, { desc = 'Open all folds' })

map('n', 'zM', function()
  vim.cmd('call VSCodeNotify("editor.foldAll")')
end, { desc = 'Close all folds' })

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
