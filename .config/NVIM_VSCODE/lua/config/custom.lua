-- packadd quickscope

-- execute 'luafile ' . stdpath('config') . '/lua/settings.lua'

local function manageEditorSize(count, to)
    count = count or 1
    local action = to == 'increase' and 'workbench.action.increaseViewSize' or 'workbench.action.decreaseViewSize'
    for i = 1, count do
        vim.fn.VSCodeNotify(action)
    end
end

local function vscodeCommentary(line1, line2)
    if line1 and line2 then
        vim.fn.VSCodeCallRange("editor.action.commentLine", line1, line2, 0)
    else
        -- For operator-pending mode
        local start_line = vim.fn.line("'[")
        local end_line = vim.fn.line("']")
        vim.fn.VSCodeCallRange("editor.action.commentLine", start_line, end_line, 0)
    end
end

local function openVSCodeCommandsInVisualMode()
    vim.cmd('normal! gv')
    local visualmode = vim.fn.visualmode()
    if visualmode == "V" then
        local startLine = vim.fn.line("v")
        local endLine = vim.fn.line(".")
        vim.fn.VSCodeNotifyRange("workbench.action.showCommands", startLine, endLine, 1)
    else
        local startPos = vim.fn.getpos("v")
        local endPos = vim.fn.getpos(".")
        vim.fn.VSCodeNotifyRangePos("workbench.action.showCommands", startPos[2], endPos[2], startPos[3], endPos[3], 1)
    end
end

local function openWhichKeyInVisualMode()
    vim.cmd('normal! gv')
    local visualmode = vim.fn.visualmode()
    if visualmode == "V" then
        local startLine = vim.fn.line("v")
        local endLine = vim.fn.line(".")
        vim.fn.VSCodeNotifyRange("whichkey.show", startLine, endLine, 1)
    else
        local startPos = vim.fn.getpos("v")
        local endPos = vim.fn.getpos(".")
        vim.fn.VSCodeNotifyRangePos("whichkey.show", startPos[2], endPos[2], startPos[3], endPos[3], 1)
    end
end

-- Better Navigation
vim.keymap.set({'n', 'x'}, '<C-j>', function() vim.fn.VSCodeNotify('workbench.action.navigateDown') end, { silent = true })
vim.keymap.set({'n', 'x'}, '<C-k>', function() vim.fn.VSCodeNotify('workbench.action.navigateUp') end, { silent = true })
vim.keymap.set({'n', 'x'}, '<C-h>', function() vim.fn.VSCodeNotify('workbench.action.navigateLeft') end, { silent = true })
vim.keymap.set({'n', 'x'}, '<C-l>', function() vim.fn.VSCodeNotify('workbench.action.navigateRight') end, { silent = true })

vim.keymap.set('n', 'gr', function() vim.fn.VSCodeNotify('editor.action.goToReferences') end)

-- Commentary mappings
vim.keymap.set('x', '<C-/>', function() 
    local start_line = vim.fn.line("'<")
    local end_line = vim.fn.line("'>")
    vscodeCommentary(start_line, end_line)
end, { expr = false })

vim.keymap.set('n', '<C-/>', function()
    local current_line = vim.fn.line(".")
    vscodeCommentary(current_line, current_line)
end, { expr = false })

vim.keymap.set('n', '<C-w>_', function() vim.fn.VSCodeNotify('workbench.action.toggleEditorWidths') end, { silent = true })

vim.keymap.set('n', '<Space>', function() vim.fn.VSCodeNotify('whichkey.show') end, { silent = true })
vim.keymap.set('x', '<Space>', openWhichKeyInVisualMode, { silent = true })

vim.keymap.set('x', '<C-P>', openVSCodeCommandsInVisualMode, { silent = true })


-- Settings
vim.opt.clipboard = 'unnamedplus'