return {
  "stevearc/conform.nvim",
  ---@type conform.setupOpts
  opts = {
    formatters_by_ft = {
      swift = { "swiftformat" },
      typst = { "prettypst" },
    },
  },
}
