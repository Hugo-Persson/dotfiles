return {
  "stevearc/conform.nvim",
  ---@type conform.setupOpts
  opts = {
    formatters_by_ft = {
      javascript = { "npx", "biome", "biome-organize-imports" },
      javascriptreact = { "npx", "biome", "biome-organize-imports" },
      typescript = { "npx", "biome", "biome-organize-imports" },
      typescriptreact = { "npx", "biome", "biome-organize-imports" },
      swift = { "swiftformat" },
      typst = { "prettypst" },
    },
  },
}
