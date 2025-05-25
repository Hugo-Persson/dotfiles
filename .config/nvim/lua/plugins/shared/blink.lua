return {
  {
    "saghen/blink.cmp",
    event = "InsertEnter", -- Only load when entering insert mode
    dependencies = {
      "Kaiser-Yang/blink-cmp-avante",
      { "moyiz/blink-emoji.nvim" },
      { "Kaiser-Yang/blink-cmp-git" },

      {
        "saghen/blink.compat",
        opts = { impersonate_nvim_cmp = true, enable_events = true },
      },
      {
        "jmbuhr/cmp-pandoc-references",
        ft = { "quarto", "markdown", "rmarkdown" },
      },
      { "kdheepak/cmp-latex-symbols" },
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      sources = {
        -- Set specific order for default sources
        default = { "avante", "snippets", "lsp", "path", "references", "buffer", "latex_symbols" },
        per_filetype = {
          codecompanion = { "codecompanion" },
        },
        providers = {
          emoji = {
            module = "blink-emoji",
            name = "Emoji",
            score_offset = -1,
          },
          -- snippets = {
          --   score_offset = 101,
          --   max_items = 5,
          -- },
          avante = {
            module = "blink-cmp-avante",
            name = "Avante",
            opts = {
              -- options for blink-cmp-avante
            },
          },

          -- git = {
          --   module = "blink-cmp-git",
          --   name = "Git",
          --   opts = {},
          --   enabled = function()
          --     return vim.tbl_contains({ "octo", "gitcommit", "git" }, vim.bo.filetype)
          --   end,
          -- },
          references = {
            name = "pandoc_references",
            module = "cmp-pandoc-references.blink",
            score_offset = 2,
          },
          latex_symbols = { name = "latex_symbols", opts = { strategy = 2 }, module = "blink.compat.source" },
        },
      },
      -- cmdline = {
      --   completion = { menu = { auto_show = true } },
      -- },

      completion = {
        -- documentation = {
        --   auto_show = true,
        --   treesitter_highlighting = true,
        -- },
        menu = {
          --auto_show = true,
        },
        ghost_text = {
          enabled = false,
        },
      },
      -- signature = { enabled = true },
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
