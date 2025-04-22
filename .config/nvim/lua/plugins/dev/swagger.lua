return {
  {
    "vinnymeller/swagger-preview.nvim",
    cmd = { "SwaggerPreview", "SwaggerPreviewStop", "SwaggerPreviewToggle" },
    build = "pnpm i",
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- make sure mason installs the server
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                --["https://spec.openapis.org/oas/3.1/schema/2025-02-13.html"] = "/*",
              },
            },
          },
        },
      },
    },
  },
}
