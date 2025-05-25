return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "Window left" },
      { "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = "Window down" },
      { "<C-k>", "<cmd>TmuxNavigateUp<CR>", desc = "Window up" },
      { "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = "Window right" },
    },
  },
}
