return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    config = function()
      vim.notify("Avante loaded")
    end,
    build = "make",
    version = false, -- set this if you want to always pull the latest change
    opts = {
      vendors = {
        provider = "deepseek local",
        vendors = {
          deepseek = {
            __inherited_from = "openai",
            api_key_name = "DEEPSEEK_API_KEY",
            endpoint = "http://localhost:1234",
            -- model = "deepseek-coder",
            model = "deepseek-r1-distill-qwen-7b",
          },
        },
      },
      -- add any opts here
    },
    --opts = { provider = "copilot" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "catppuccin/nvim",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    optional = true,
    ft = function(_, ft)
      vim.list_extend(ft, { "Avante" })
    end,
    opts = function(_, opts)
      opts.file_types = vim.list_extend(opts.file_types or {}, { "Avante" })
    end,
  },
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      spec = {
        { "<leader>a", group = "ai" },
      },
    },
  },
}
