-- Function to check if there are backticks around the current word
local function has_backticks_around()
  -- Get the current cursor position
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))

  -- Get the current line
  local line = vim.api.nvim_get_current_line()

  -- Find the start and end of the current word
  local start_col, end_col = col, col
  while start_col > 0 and line:sub(start_col, start_col):match("%w") do
    start_col = start_col - 1
  end
  while end_col <= #line and line:sub(end_col, end_col):match("%w") do
    end_col = end_col + 1
  end

  -- Adjust for indexing
  start_col = start_col + 1

  -- Check for backticks around the word
  local has_backtick_left = start_col > 1 and line:sub(start_col - 1, start_col - 1) == "`"
  local has_backtick_right = end_col <= #line and line:sub(end_col, end_col) == "`"

  return has_backtick_left and has_backtick_right
end

return function()
  -- add custom keymaps here
  -- Keymaps are automatically loaded on the VeryLazy event

  -- https://github.com/linkarzu/dotfiles-latest/blob/main/neovim/neobean/lua/config/keymaps.lua
  -- vim.keymap.s  -- vim.keymap.set({
  -- Toggle bullet point at the beginning of the current line in normal mode
  -- If in a multiline paragraph, make sure the cursor is on the line at the top
  -- "d" is for "dash" lamw25wmal
  vim.keymap.set("n", "<leader>md", function()
    -- Get the current cursor position
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    local current_buffer = vim.api.nvim_get_current_buf()
    local start_row = cursor_pos[1] - 1
    local col = cursor_pos[2]
    -- Get the current line
    local line = vim.api.nvim_buf_get_lines(current_buffer, start_row, start_row + 1, false)[1]
    -- Check if the line already starts with a bullet point
    if line:match("^%s*%-") then
      -- Remove the bullet point from the start of the line
      line = line:gsub("^%s*%-", "")
      vim.api.nvim_buf_set_lines(current_buffer, start_row, start_row + 1, false, { line })
      return
    end
    -- Search for newline to the left of the cursor position
    local left_text = line:sub(1, col)
    local bullet_start = left_text:reverse():find("\n")
    if bullet_start then
      bullet_start = col - bullet_start
    end
    -- Search for newline to the right of the cursor position and in following lines
    local right_text = line:sub(col + 1)
    local bullet_end = right_text:find("\n")
    local end_row = start_row
    while not bullet_end and end_row < vim.api.nvim_buf_line_count(current_buffer) - 1 do
      end_row = end_row + 1
      local next_line = vim.api.nvim_buf_get_lines(current_buffer, end_row, end_row + 1, false)[1]
      if next_line == "" then
        break
      end
      right_text = right_text .. "\n" .. next_line
      bullet_end = right_text:find("\n")
    end
    if bullet_end then
      bullet_end = col + bullet_end
    end
    -- Extract lines
    local text_lines = vim.api.nvim_buf_get_lines(current_buffer, start_row, end_row + 1, false)
    local text = table.concat(text_lines, "\n")
    -- Add bullet point at the start of the text
    local new_text = "- " .. text
    local new_lines = vim.split(new_text, "\n")
    -- Set new lines in buffer
    vim.api.nvim_buf_set_lines(current_buffer, start_row, end_row + 1, false, new_lines)
  end, { desc = "[P]Toggle bullet point (dash)" })

  ---- In visual mode, check if the selected text is already bold and show a message if it is
  -- If not, surround it with double asterisks for bold
  vim.keymap.set("v", "<leader>mb", function()
    -- Get the selected text range
    local start_row, start_col = unpack(vim.fn.getpos("'<"), 2, 3)
    local end_row, end_col = unpack(vim.fn.getpos("'>"), 2, 3)
    -- Get the selected lines
    local lines = vim.api.nvim_buf_get_lines(0, start_row - 1, end_row, false)
    local selected_text = table.concat(lines, "\n"):sub(start_col, #lines == 1 and end_col or -1)
    if selected_text:match("^%*%*.*%*%*$") then
      vim.notify("Text already bold", vim.log.levels.INFO)
    else
      vim.cmd("normal 2gsa*")
    end
  end, { desc = "[P]BOLD current selection" })

  -- -- Multiline unbold attempt
  -- -- In normal mode, bold the current word under the cursor
  -- -- If already bold, it will unbold the word under the cursor
  -- -- If you're in a multiline bold, it will unbold it only if you're on the
  -- -- first line
  vim.keymap.set("n", "<leader>mb", function()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    local current_buffer = vim.api.nvim_get_current_buf()
    local start_row = cursor_pos[1] - 1
    local col = cursor_pos[2]
    -- Get the current line
    local line = vim.api.nvim_buf_get_lines(current_buffer, start_row, start_row + 1, false)[1]
    -- Check if the cursor is on an asterisk
    if line:sub(col + 1, col + 1):match("%*") then
      vim.notify("Cursor is on an asterisk, run inside the bold text", vim.log.levels.WARN)
      return
    end

    -- Search for '**' to the left of the cursor position
    local left_text = line:sub(1, col)
    local bold_start = left_text:reverse():find("%*%*")
    if bold_start then
      bold_start = col - bold_start
    end
    -- Search for '**' to the right of the cursor position and in following lines
    local right_text = line:sub(col + 1)
    local bold_end = right_text:find("%*%*")
    local end_row = start_row
    while not bold_end and end_row < vim.api.nvim_buf_line_count(current_buffer) - 1 do
      end_row = end_row + 1
      local next_line = vim.api.nvim_buf_get_lines(current_buffer, end_row, end_row + 1, false)[1]
      if next_line == "" then
        break
      end
      right_text = right_text .. "\n" .. next_line
      bold_end = right_text:find("%*%*")
    end
    if bold_end then
      bold_end = col + bold_end
    end
    -- Remove '**' markers if found, otherwise bold the word
    if bold_start and bold_end then
      -- Extract lines
      local text_lines = vim.api.nvim_buf_get_lines(current_buffer, start_row, end_row + 1, false)
      local text = table.concat(text_lines, "\n")
      -- Calculate positions to correctly remove '**'
      -- vim.notify("bold_start: " .. bold_start .. ", bold_end: " .. bold_end)
      local new_text = text:sub(1, bold_start - 1) .. text:sub(bold_start + 2, bold_end - 1) .. text:sub(bold_end + 2)
      local new_lines = vim.split(new_text, "\n")
      -- Set new lines in buffer
      vim.api.nvim_buf_set_lines(current_buffer, start_row, end_row + 1, false, new_lines)
      -- vim.notify("Unbolded text", vim.log.levels.INFO)
    else
      -- Bold the word at the cursor position if no bold markers are found
      local before = line:sub(1, col)
      local after = line:sub(col + 1)
      local inside_surround = before:match("%*%*[^%*]*$") and after:match("^[^%*]*%*%*")
      if inside_surround then
        vim.cmd("normal gsd*.")
      else
        vim.cmd("normal viw")
        vim.cmd("normal 2gsa*")
      end
      vim.notify("Bolded current word", vim.log.levels.INFO)
    end
  end, { desc = "[P]BOLD toggle bold markers" })

  vim.keymap.set("n", "<leader>mc", function()
    if has_backticks_around() then
      vim.notify("Text is code, uncoding", vim.log.levels.INFO)
      vim.cmd("normal gsd`")
    else
      vim.notify("Text is not code, adding", vim.log.levels.INFO)
      vim.cmd("normal gsaiW`")
    end
  end, { noremap = true, silent = true, desc = "[P]CODE toggle" })

  -- In visual mode, surround the selected text with markdown link syntax
  vim.keymap.set("v", "<leader>mll", function()
    -- Copy what's currently in my clipboard to the register "a lamw25wmal
    vim.cmd("let @a = getreg('+')")
    -- delete selected text
    vim.cmd("normal d")
    -- Insert the following in insert mode
    vim.cmd("startinsert")
    vim.api.nvim_put({ "[]() " }, "c", true, true)
    -- Move to the left, paste, and then move to the right
    vim.cmd("normal F[pf(")
    -- Copy what's on the "a register back to the clipboard
    vim.cmd("call setreg('+', @a)")
    -- Paste what's on the clipboard
    vim.cmd("normal p")
    -- Leave me in normal mode or command mode
    vim.cmd("stopinsert")
    -- Leave me in insert mode to start typing
    -- vim.cmd("startinsert")
  end, { desc = "[P]Convert to link" })

  -- In visual mode, surround the selected text with markdown link syntax
  vim.keymap.set("v", "<leader>mlt", function()
    -- Copy what's currently in my clipboard to the register "a lamw25wmal
    vim.cmd("let @a = getreg('+')")
    -- delete selected text
    vim.cmd("normal d")
    -- Insert the following in insert mode
    vim.cmd("startinsert")
    vim.api.nvim_put({ '[](){:target="_blank"} ' }, "c", true, true)
    vim.cmd("normal F[pf(")
    -- Copy what's on the "a register back to the clipboard
    vim.cmd("call setreg('+', @a)")
    -- Paste what's on the clipboard
    vim.cmd("normal p")
    -- Leave me in normal mode or command mode
    vim.cmd("stopinsert")
    -- Leave me in insert mode to start typing
    -- vim.cmd("startinsert")
  end, { desc = "[P]Convert to link (new tab)" })

  -- Search DOWN for a markdown header
  -- Make sure to follow proper markdown convention, and you have a single H1
  -- heading at the very top of the file
  -- This will only search for H2 headings and above
  vim.keymap.set({ "n", "v" }, "gj", function()
    -- `/` - Start a search forwards from the current cursor position.
    -- `^` - Match the beginning of a line.
    -- `##` - Match 2 ## symbols
    -- `\\+` - Match one or more occurrences of prev element (#)
    -- `\\s` - Match exactly one whitespace character following the hashes
    -- `.*` - Match any characters (except newline) following the space
    -- `$` - Match extends to end of line
    vim.cmd("silent! /^##\\+\\s.*$")
    -- Clear the search highlight
    vim.cmd("nohlsearch")
  end, { desc = "[P]Go to next markdown header" })

  vim.keymap.set("n", "<leader>mt", function()
    local line = vim.api.nvim_get_current_line()
    if line:match("%- %[ %]") then
      line = line:gsub("%- %[ %]", "- [x]")
    elseif line:match("%- %[x%]") then
      line = line:gsub("%- %[x%]", "- [ ]")
    end
    vim.api.nvim_set_current_line(line)
  end, { desc = "Toggle markdown task" })
end
