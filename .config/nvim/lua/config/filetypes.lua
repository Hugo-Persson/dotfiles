-- Define filetype detection and settings

-- Set docker-compose files filetype
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "docker-compose.yaml", "docker-compose.yml" },
  callback = function()
    vim.bo.filetype = "yaml.docker-compose"
  end,
  desc = "Set filetype for docker-compose files",
})

-- Set jrag files filetype
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.jrag",
  command = "setfiletype java",
  desc = "Set Java filetype for jrag files",
})

return {} -- Return empty table for module
