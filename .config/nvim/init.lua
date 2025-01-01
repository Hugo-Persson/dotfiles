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
