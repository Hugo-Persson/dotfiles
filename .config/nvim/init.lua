-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Adding .root for root detection
vim.g.root_spec = { "lsp", { ".root", ".git", "lua" }, "cwd" }
vim.api.nvim_command("set clipboard&vim")
vim.g.tmux_navigator_save_on_switch = 2
function docker_fix()
  local filename = vim.fn.expand("%:t")

  if filename == "docker-compose.yaml" or filename == "docker-compose.yml" then
    vim.bo.filetype = "yaml.docker-compose"
    print("matched!")
  else
    print(filename)
  end
end

vim.cmd([[au BufRead * lua docker_fix()]])
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.jrag",
  command = "setfiletype java",
})
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
end
