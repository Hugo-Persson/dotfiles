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
      --
      ---@class snacks.notifier.Config
      ---@field enabled? boolean
      ---@field keep? fun(notif: snacks.notifier.Notif): boolean # global keep function
      ---@field filter? fun(notif: snacks.notifier.Notif): boolean # filter our unwanted notifications (return false to hide)
      notifier = {
        sort = { "level", "added" }, -- sort by level and time
        -- minimum log level to display. TRACE is the lowest
        -- all notifications are stored in history
        level = vim.log.levels.TRACE,
        keep = function(notif)
          return vim.fn.getcmdpos() > 0
        end,
        ---@type snacks.notifier.style
        style = "compact",
        top_down = true, -- place notifications from top to bottom
        date_format = "%R", -- time format for notifications
        -- format for footer when more lines are available
        -- `%d` is replaced with the number of lines.
        -- only works for styles with a border
        ---@type string|boolean
        more_format = " ↓ %d lines ",
        refresh = 50, -- refresh at most every 50ms
      },
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
