return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter", -- Only load when entering insert mode
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        -- Delay loading snippets until after InsertEnter
        vim.defer_fn(function()
          require("luasnip.loaders.from_vscode").lazy_load()
          require("luasnip.loaders.from_lua").load({ paths = { "./lua/custom/snippets" } })
        end, 100)
      end,
    },
  },
  config = function()
    -- Any additional LuaSnip settings
  end,
}
