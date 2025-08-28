local function blend_colors(fg, bg, alpha)
  local function hex_to_rgb(hex)
    return tonumber(hex:sub(2, 3), 16), tonumber(hex:sub(4, 5), 16), tonumber(hex:sub(6, 7), 16)
  end

  local function rgb_to_hex(r, g, b)
    return string.format("#%02x%02x%02x", r, g, b)
  end

  local fg_r, fg_g, fg_b = hex_to_rgb(fg)
  local bg_r, bg_g, bg_b = hex_to_rgb(bg)

  local blended_r = math.floor(bg_r + (fg_r - bg_r) * alpha)
  local blended_g = math.floor(bg_g + (fg_g - bg_g) * alpha)
  local blended_b = math.floor(bg_b + (fg_b - bg_b) * alpha)

  return rgb_to_hex(blended_r, blended_g, blended_b)
end

return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    config = function()
      local status_ok, dark_notify = pcall(require, "dark_notify")
      if status_ok then
        dark_notify.run()
      end

      local scheme = GetColorScheme()
      local base = scheme.base
      -- https://github.com/catppuccin/catppuccin/blob/main/docs/style-guide.md#diff--merge
      vim.api.nvim_set_hl(0, "AvanteConflictIncoming", {
        bg = blend_colors(scheme.green, scheme.base, 0.15),
        bold = true,
      })

      vim.api.nvim_set_hl(0, "AvanteConflictCurrent", {
        bg = blend_colors(scheme.red, scheme.base, 0.15),
        bold = true,
      })

      vim.api.nvim_set_hl(0, "AvanteConflictCurrentLabel", {
        fg = scheme.blue, -- Blue
        bold = true,
      })

      vim.api.nvim_set_hl(0, "AvanteConflictIncomingLabel", {
        fg = scheme.peach, -- Peach
        bold = true,
      })
    end,
    opts = {

      -- custom_highlights = function(colors)
      --   return {
      --     -- Comment = { fg = colors.flamingo },
      --     -- https://github.com/catppuccin/nvim/blob/0b5df9c9e641b1212b21a0762ccad4434fd41322/lua/catppuccin/utils/colors.lua#L36
      --     -- CursorLine = { bg = colors.peach },
      --     -- TabLineSel = { bg = colors.pink },
      --     CmpBorder = { fg = colors.surface2 },
      --     Pmenu = { bg = colors.none },
      --     NeoTreeIndentMarker = { fg = colors.flamingo },
      --     NeoTreeExpander = { fg = colors.flamingo },
      --     NeoTreeNormal = { fg = colors.text, bg = colors.base },
      --     NeoTreeNormalNC = { fg = colors.text, bg = colors.base },
      --   }
      -- end,
      integrations = {
        aerial = true,
        diffview = true,
        alpha = true,
        --cmp = true,
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
