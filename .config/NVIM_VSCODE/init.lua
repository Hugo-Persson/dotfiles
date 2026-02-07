vim.g.mapleader = " "
-- Map <leader>ca to VSCode Quick Fix
vim.keymap.set("n", "<leader>ca", function()
	vim.cmd('call VSCodeNotify("editor.action.quickFix")')
end, { desc = "VSCode Quick Fix" })

-- Map <leader>cr to VSCode Rename Symbol
vim.keymap.set("n", "<leader>cr", function()
	vim.cmd('call VSCodeNotify("editor.action.rename")')
end, { desc = "VSCode Rename Symbol" })

-- Shift+H: Go to tab on the left (loop around)
vim.keymap.set("n", "H", function()
	vim.cmd('call VSCodeNotify("workbench.action.previousEditorInGroup")')
end, { desc = "Go to left tab" })

-- Shift+L: Go to tab on the right (loop around)
vim.keymap.set("n", "L", function()
	vim.cmd('call VSCodeNotify("workbench.action.nextEditorInGroup")')
end, { desc = "Go to right tab" })

-- Jump to next/prev LSP error, warning, or diagnostic
vim.keymap.set("n", "]e", function()
	vim.cmd('call VSCodeNotify("editor.action.marker.next")')
end, { desc = "Next error (file)" })

vim.keymap.set("n", "[e", function()
	vim.cmd('call VSCodeNotify("editor.action.marker.prev")')
end, { desc = "Previous error (file)" })

vim.keymap.set("n", "]w", function()
	vim.cmd('call VSCodeNotify("editor.action.marker.next")')
end, { desc = "Next warning (file)" })

vim.keymap.set("n", "[w", function()
	vim.cmd('call VSCodeNotify("editor.action.marker.prev")')
end, { desc = "Previous warning (file)" })

vim.keymap.set("n", "]d", function()
	vim.cmd('call VSCodeNotify("editor.action.marker.next")')
end, { desc = "Next diagnostic" })

vim.keymap.set("n", "[d", function()
	vim.cmd('call VSCodeNotify("editor.action.marker.prev")')
end, { desc = "Previous diagnostic" })

require("config.lazy")
require("config.custom")
require("config.keymaps")

