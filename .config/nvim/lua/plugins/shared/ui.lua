return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- styles = {
      --
      --   lazygit = {
      --     width = 0,
      --     height = 0,
      --   },
      --   notification = {
      --     wo = { wrap = true }, -- Wrap notifications
      --   },
      -- },
      -- bigfile = { enabled = true },
      -- bufdelete = { enabled = true },
      dashboard = {
        enabled = true,
        preset = {
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
        sections = {
          {
            section = "terminal",
            cmd = "lolcat --seed=24 ~/.config/nvim/static/neovim.cat",
            indent = -5,
            height = 8,
            width = 69,
            padding = 1,
          },
          {
            section = "keys",
            indent = 1,
            padding = 1,
          },
          { section = "startup" },
        },
      },
      indent = {
        enabled = true,
        scope = { enabled = false },
      },
      input = { enabled = true },
      -- lazygit = {
      --   theme = {
      --     [241] = { fg = "Special" },
      --     activeBorderColor = { fg = "String", bold = true },
      --     cherryPickedCommitBgColor = { fg = "Identifier" },
      --     cherryPickedCommitFgColor = { fg = "Function" },
      --     defaultFgColor = { fg = "Normal" },
      --     inactiveBorderColor = { fg = "FloatBorder" },
      --     optionsTextColor = { fg = "Function" },
      --     searchingActiveBorderColor = { fg = "String", bold = true },
      --     selectedLineBgColor = { bg = "Visual" }, -- set to `default` to have no background colour
      --     unstagedChangesColor = { fg = "DiagnosticError" },
      --   },
      -- },
      picker = {
        prompt = "> ",
        enabled = true,
        win = {
          input = {
            wo = {
              foldcolumn = "0",
            },
          },
          list = {
            wo = {
              foldcolumn = "0",
            },
          },
          preview = {
            wo = {
              foldcolumn = "0",
            },
          },
        },
      },
      notifier = { enabled = true },
      terminal = { enabled = true },
    },
  },
}
