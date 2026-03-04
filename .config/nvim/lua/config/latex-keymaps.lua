--- Find the last occurrence of `cmd_prefix{` before or at `col` (1-indexed) in `line`,
--- then find its matching `}`. Returns (cmd_start, prefix_end, brace_end) or nil.
local function find_latex_cmd(line, col, cmd_prefix)
  local cmd_start, prefix_end
  local pos = 1
  while true do
    local s, e = line:find(cmd_prefix .. "{", pos, true)
    if not s or s > col then
      break
    end
    cmd_start = s
    prefix_end = e
    pos = e + 1
  end
  if not cmd_start then
    return nil
  end
  -- Find matching closing brace
  local depth = 1
  local i = prefix_end + 1
  while i <= #line and depth > 0 do
    local ch = line:sub(i, i)
    if ch == "{" then
      depth = depth + 1
    elseif ch == "}" then
      depth = depth - 1
    end
    i = i + 1
  end
  return cmd_start, prefix_end, i - 1
end

--- Get the word boundaries around `col` (0-indexed cursor col) in `line`.
--- Returns word_start, word_end (1-indexed) or nil if no word.
local function get_word_bounds(line, col)
  local ws, we = col + 1, col + 1
  while ws > 1 and line:sub(ws - 1, ws - 1):match("%w") do
    ws = ws - 1
  end
  while we < #line and line:sub(we + 1, we + 1):match("%w") do
    we = we + 1
  end
  local word = line:sub(ws, we)
  if word == "" or not word:match("%w") then
    return nil
  end
  return ws, we
end

--- Toggle a \cmd{} wrapper in normal mode.
--- If cursor is inside \cmd{...}, unwrap. If on a word, wrap it. Otherwise insert empty \cmd{} and enter insert mode.
local function toggle_latex_cmd_normal(cmd)
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  local row = cursor_pos[1] - 1
  local col = cursor_pos[2]
  local line = vim.api.nvim_get_current_line()

  local cmd_start, prefix_end, brace_end = find_latex_cmd(line, col + 1, "\\" .. cmd)
  if cmd_start and brace_end and col + 1 >= cmd_start and col + 1 <= brace_end then
    -- Cursor is inside \cmd{...}, remove wrapper
    local inner = line:sub(prefix_end + 1, brace_end - 1)
    local new_line = line:sub(1, cmd_start - 1) .. inner .. line:sub(brace_end + 1)
    vim.api.nvim_buf_set_lines(0, row, row + 1, false, { new_line })
    vim.notify("Removed \\" .. cmd, vim.log.levels.INFO)
    return
  end

  local ws, we = get_word_bounds(line, col)
  if not ws then
    -- No word under cursor, insert empty \cmd{} and enter insert mode
    local before = line:sub(1, col + 1)
    local after = line:sub(col + 2)
    local insert_text = "\\" .. cmd .. "{}"
    local new_line = before .. insert_text .. after
    vim.api.nvim_buf_set_lines(0, row, row + 1, false, { new_line })
    vim.api.nvim_win_set_cursor(0, { row + 1, col + #insert_text })
    vim.cmd("startinsert")
    return
  end

  -- Wrap the word
  local word = line:sub(ws, we)
  local new_line = line:sub(1, ws - 1) .. "\\" .. cmd .. "{" .. word .. "}" .. line:sub(we + 1)
  vim.api.nvim_buf_set_lines(0, row, row + 1, false, { new_line })
  vim.notify("Wrapped in \\" .. cmd, vim.log.levels.INFO)
end

--- Wrap visual selection in \cmd{}.
local function wrap_visual_latex_cmd(cmd)
  vim.cmd('normal! "zy')
  local text = vim.fn.getreg("z")
  local pattern = "^\\" .. cmd .. "{.*}$"
  if text:match(pattern) then
    vim.notify("Already wrapped in \\" .. cmd, vim.log.levels.INFO)
    return
  end
  vim.cmd('normal! gv"_c\\' .. cmd .. "{" .. text .. "}")
end

return function()
  -- Bold: \textbf{}
  vim.keymap.set("v", "<leader>mb", function()
    wrap_visual_latex_cmd("textbf")
  end, { buffer = true, desc = "[P]BOLD current selection (LaTeX)" })

  vim.keymap.set("n", "<leader>mb", function()
    toggle_latex_cmd_normal("textbf")
  end, { buffer = true, desc = "[P]BOLD toggle (LaTeX)" })

  -- Code/monospace: \texttt{}
  vim.keymap.set("v", "<leader>mc", function()
    wrap_visual_latex_cmd("texttt")
  end, { buffer = true, desc = "[P]CODE current selection (LaTeX)" })

  vim.keymap.set("n", "<leader>mc", function()
    toggle_latex_cmd_normal("texttt")
  end, { buffer = true, desc = "[P]CODE toggle (LaTeX)" })

  -- Dash/bullet: toggle \item prefix on current line
  vim.keymap.set("n", "<leader>md", function()
    local line = vim.api.nvim_get_current_line()
    if line:match("^%s*\\item") then
      local new_line = line:gsub("^(%s*)\\item%s?", "%1")
      vim.api.nvim_set_current_line(new_line)
    else
      local indent = line:match("^(%s*)")
      local new_line = indent .. "\\item " .. line:sub(#indent + 1)
      vim.api.nvim_set_current_line(new_line)
    end
  end, { buffer = true, desc = "[P]Toggle \\item (LaTeX)" })

  -- Link: \href{url}{text} from visual selection
  vim.keymap.set("v", "<leader>mll", function()
    -- Save clipboard to register a
    vim.cmd("let @a = getreg('+')")
    -- Yank selection into register z
    vim.cmd('normal! "zy')
    local text = vim.fn.getreg("z")
    -- Delete the selection
    vim.cmd('normal! gv"_d')
    -- Insert \href{}{text} with clipboard as URL
    local url = vim.fn.getreg("a")
    vim.api.nvim_put({ "\\href{" .. url .. "}{" .. text .. "}" }, "c", false, true)
  end, { buffer = true, desc = "[P]Convert to \\href link (LaTeX)" })

  -- Math block: $$ $$
  vim.keymap.set("v", "<leader>mm", function()
    vim.cmd('normal! "zy')
    local text = vim.fn.getreg("z")
    if text:match("^%$%$.*%$%$$") then
      vim.notify("Already in math block", vim.log.levels.INFO)
      return
    end
    vim.cmd('normal! gv"_c$$ ' .. text .. " $$")
  end, { buffer = true, desc = "[P]MATH wrap selection (LaTeX)" })

  vim.keymap.set("n", "<leader>mm", function()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    local row = cursor_pos[1] - 1
    local col = cursor_pos[2]
    local line = vim.api.nvim_get_current_line()

    -- Check if cursor is inside $$ ... $$
    local left = line:sub(1, col + 1)
    local right = line:sub(col + 2)
    local open_pos = left:find("%$%$")
    local close_pos = right:find("%$%$")

    if open_pos and close_pos then
      -- Remove the $$ $$ wrapper
      local close_abs = col + 1 + close_pos
      local inner = line:sub(open_pos + 2, close_abs - 1)
      -- Trim single leading/trailing space from inner content
      inner = inner:gsub("^%s", ""):gsub("%s$", "")
      local new_line = line:sub(1, open_pos - 1) .. inner .. line:sub(close_abs + 1)
      vim.api.nvim_buf_set_lines(0, row, row + 1, false, { new_line })
      vim.notify("Removed math block", vim.log.levels.INFO)
      return
    end

    -- Wrap word or insert empty $$ $$
    local ws, we = get_word_bounds(line, col)
    if not ws then
      local before = line:sub(1, col + 1)
      local after = line:sub(col + 2)
      local new_line = before .. "$$  $$" .. after
      vim.api.nvim_buf_set_lines(0, row, row + 1, false, { new_line })
      vim.api.nvim_win_set_cursor(0, { row + 1, col + 3 })
      vim.cmd("startinsert")
      return
    end

    local word = line:sub(ws, we)
    local new_line = line:sub(1, ws - 1) .. "$$ " .. word .. " $$" .. line:sub(we + 1)
    vim.api.nvim_buf_set_lines(0, row, row + 1, false, { new_line })
    vim.notify("Wrapped in math block", vim.log.levels.INFO)
  end, { buffer = true, desc = "[P]MATH toggle (LaTeX)" })

  -- Navigate to next \section, \subsection, \chapter, etc.
  vim.keymap.set({ "n", "v" }, "gj", function()
    vim.cmd("silent! /^\\\\\\(chapter\\|section\\|subsection\\|subsubsection\\|paragraph\\)\\>")
    vim.cmd("nohlsearch")
  end, { buffer = true, desc = "[P]Go to next LaTeX section" })
end
