return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "Kaiser-Yang/blink-cmp-avante",
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      sources = {
        -- Add 'avante' to the list
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
          avante = {
            module = "blink-cmp-avante",
            name = "Avante",
            opts = {
              -- options for blink-cmp-avante
            },
          },
        },
      },
      keymap = {
        ["<Tab>"] = {
          "select_next",
          "snippet_forward",
          "fallback",
        },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
    },
  },
}
