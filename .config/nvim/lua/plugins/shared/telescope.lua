local telescope = require("telescope")
local telescopeConfig = require("telescope.config")

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

telescope.setup({
  pickers = {
    find_files = {
      -- The following are not native Telescope options, but kept for reference:
      -- always_show = {
      --    "env",
      --    ".github",
      --    ".npmrc",
      -- },
      -- always_show_by_pattern = {
      --    ".env*",
      --    ".github/**",
      -- },
    },
  },
})

return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup({
        -- defaults = {
        --   vimgrep_arguments = vimgrep_arguments,
        -- },
        pickers = {
          find_files = {
            find_command = {
              "rg",
              "--files",
              "--hidden",
              "--glob",
              "!**/.git/*",
            },
          },
        },
      })
    end,
    keys = {
      {
        "<leader>fs",
        function()
          require("telescope.builtin").live_grep({
            additional_args = function(args)
              return vim.list_extend(args, { "--regexp", "-e", '"[^"]*', "-e", "'[^']*" })
            end,
          })
        end,
        desc = "Search for content inside strings",
      },
    },
  },
}
