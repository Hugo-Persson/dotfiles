return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.notify("Catppuccin loaded")
      require("dark_notify").run()
    end,
    opts = {

      custom_highlights = function(colors)
        return {
          -- Comment = { fg = colors.flamingo },
          -- https://github.com/catppuccin/nvim/blob/0b5df9c9e641b1212b21a0762ccad4434fd41322/lua/catppuccin/utils/colors.lua#L36
          -- CursorLine = { bg = colors.peach },
          -- TabLineSel = { bg = colors.pink },
          CmpBorder = { fg = colors.surface2 },
          Pmenu = { bg = colors.none },
          NeoTreeIndentMarker = { fg = colors.flamingo },
          NeoTreeExpander = { fg = colors.flamingo },
          NeoTreeNormal = { fg = colors.text, bg = colors.base },
          NeoTreeNormalNC = { fg = colors.text, bg = colors.base },
        }
      end,
      integrations = {
        aerial = true,
        diffview = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  -- Configure LazyVim to load Catppucin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
