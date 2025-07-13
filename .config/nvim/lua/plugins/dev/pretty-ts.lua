vim.diagnostic.config({
  float = {
    border = "rounded",
    source = "always",
    format = function(diagnostic)
      return string.format("%s (%s)", diagnostic.message, diagnostic.source)
    end,
  },
})
return {
  {
    "caliguIa/zendiagram.nvim",
    event = "LspAttach",
    opts = {},
  },
  {
    "davidosomething/format-ts-errors.nvim",
    event = "LspAttach",
    config = function()
      require("format-ts-errors").setup({
        add_markdown = false, -- wrap output with markdown ```ts ``` markers
      })
    end,
  },
  -- {
  --   "OlegGulevskyy/better-ts-errors.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim" },
  --   keys = {
  --     {
  --       "<leader>xd",
  --       function()
  --         require("better-ts-errors").toggle()
  --       end,
  --       desc = "Toggle TypeScript Errors",
  --     },
  --     {
  --       "<leader>dx",
  --       function()
  --         require("better-ts-errors").go_to_definition()
  --       end,
  --       desc = "Go to TypeScript Error Definition",
  --     },
  --   },
  --   config = {
  --     keymaps = {
  --       toggle = "<leader>xd", -- default '<leader>dd'
  --       go_to_definition = "<leader>xg", -- default '<leader>dx'
  --     },
  --   },
  --
  --
  -- },
}
