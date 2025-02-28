return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "python",
        "haskell",
        "svelte",
        "prisma",
        "java",
        "kotlin",
        "rust",
        "dart",
        "swift",
        "ruby",
      })
    end,
  },
}
