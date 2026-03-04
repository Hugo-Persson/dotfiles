return {
  "stevearc/conform.nvim",
  ---@type conform.setupOpts
  opts = {
    formatters_by_ft = {
      swift = { "swiftformat" },
      tex = { "tex-fmt" },
      typst = { "prettypst" },
    },
  },
}
