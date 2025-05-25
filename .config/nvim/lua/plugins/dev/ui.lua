return {
  {
    "3rd/image.nvim",
    ft = { "markdown", "vimwiki", "quarto", "typst" }, -- Only load for these filetypes
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
      },
    },
    opts = {
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = false, -- Disable automatic downloads to improve performance
          only_render_image_at_cursor = true,
          filetypes = { "markdown", "vimwiki", "quarto" }, -- markdown extensions (ie. quarto) can go here
        },
        neorg = {
          enabled = false,
          clear_in_insert_mode = false,
          download_remote_images = false,
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
