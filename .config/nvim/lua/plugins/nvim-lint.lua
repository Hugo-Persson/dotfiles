local linters = {}
linters["markdownlint-cli2"] = {
  args = { "--config", "~/.config/nvim/markdownlint.jsonc", "--" },
}

return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        swift = { "swiftlint" },
      },
      linters = linters,
    },
  },
}
