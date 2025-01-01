return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = not vim.g.ai_cmp,
        auto_trigger = false,
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
}
