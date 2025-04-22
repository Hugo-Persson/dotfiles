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
        marksman = {
          filetypes = { "markdown", "quarto" },
          --root_dir = util.root_pattern('.git', '.marksman.toml', '_quarto.yml'),
        },
        sourcekit = {
          -- cmd = { vim.trim(vim.fn.system("xcrun -f sourcekit-lsp")) },
          on_init = function(client)
            -- HACK: to fix some issues with LSP
            -- more details: https://github.com/neovim/neovim/issues/19237#issuecomment-2237037154
            client.offset_encoding = "utf-8"
          end,
        },
      },
    },
  },
}
