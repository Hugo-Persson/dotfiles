return {
  {
    "3rd/image.nvim",
    event = "VeryLazy",
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
          require("nvim-treesitter.configs").setup({
            ensure_installed = { "markdown" },
            highlight = { enable = true },
          })
        end,
      },
    },
    opts = {
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = true,
          filetypes = { "markdown", "vimwiki", "quarto" }, -- markdown extensions (ie. quarto) can go here
        },
        neorg = {
          enabled = false,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = true,
          filetypes = { "norg" },
        },
        typst = {
          enabled = true,
          only_render_image_at_cursor = true,
          filetypes = { "typst" },
        },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      kitty_method = "normal",
    },
  },
}
