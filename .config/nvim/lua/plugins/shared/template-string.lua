return {
  {
    "axelvc/template-string.nvim",
    lazy = true,
    ft = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
    config = function()
      require("template-string").setup()
    end,
  },
}
