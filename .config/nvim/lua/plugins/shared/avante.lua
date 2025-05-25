return {
  {
    "yetone/avante.nvim",
    --url = "git@github.com:msvechla/avante.nvim.git",
    event = "VeryLazy",
    -- lazy = false,
    build = "make",

    version = false, -- set this if you want to always pull the latest change
    opts = {
      provider = "bedrock",
      bedrock = {
        -- model = "us.anthropic.claude-3-5-sonnet-20241022-v2:0",
        -- model = "us.anthropic.claude-3-5-haiku-20241022-v1:0",
        model = "us.anthropic.claude-3-7-sonnet-20250219-v1:0",
        --aws_profile = "bedrock",
        -- aws_region = "us-east-2",
      },
      vendors = {
        ["deepseek"] = {
          __inherited_from = "openai",
          api_key_name = "DEEPSEEK_API_KEY",
          endpoint = "https://api.deepseek.com",
          model = "deepseek-coder",
        },
      },
      -- add any opts here
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "catppuccin/nvim",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
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
