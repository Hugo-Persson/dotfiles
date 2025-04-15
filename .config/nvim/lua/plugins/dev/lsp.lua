return {

  { -- for lsp features in code cells / embedded code
    "jmbuhr/otter.nvim",
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        "nvim-treesitter/nvim-treesitter",
      },
    },
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        prismals = {},
        kotlin_language_server = {},
      },
    },
  },
}
