return {
  "catppuccin/nvim",
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
  },
}