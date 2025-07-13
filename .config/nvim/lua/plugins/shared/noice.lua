return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    -- cond = function()
    --   local filename = vim.fn.expand("%:t")
    --   return not filename:match("^exam_")
    -- end,
    opts = {
      lsp = {
        hover = {
          enabled = true,
        },
        signature = {
          enabled = true,
        },
        message = {
          enabled = true,
        },
      },
      documentation = {
        view = "hover",
        ---@type NoiceViewOptions
        opts = {
          lang = "markdown",
          replace = true,
          render = "plain",
          format = { "{message}" },
          win_options = { concealcursor = "n", conceallevel = 3 },
        },
      },
    },
  },
}
