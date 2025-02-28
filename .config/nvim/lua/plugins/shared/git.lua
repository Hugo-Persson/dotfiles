return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
  },
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    keys = {
      -- change a keymap
      { "<leader>gb", "<cmd>BlameToggle<cr>", desc = "Git blame" },
    },
    config = function()
      require("blame").setup({
        -- commit_detail_view = function(commit_hash, row, file_pat)
        --   vim.notify("Commit hash: " .. commit_hash)
        --   vim.api.nvim_command("NeogitCommit " .. commit_hash)
        -- end,
      })
    end,
  },
  {
    --- https://www.youtube.com/watch?v=LLB8Cpj8IKU
    "akinsho/git-conflict.nvim",
    config = function()
      require("git-conflict").setup({
        default_mappings = true, -- disable buffer local mapping created by this plugin
        default_commands = true, -- disable commands created by this plugin
        disable_diagnostics = true, -- This will disable the diagnostics in a buffer whilst it is conflicted
        list_opener = "copen", -- command or function to open the conflicts list
        highlights = { -- They must have background color, otherwise the default color will be used
          incoming = "DiffAdd",
          current = "DiffText",
        },
      })

      -- vim.keymap.set('n', '<leader>gc', ':GitConflictRefresh<CR>', {noremap = true, silent = true})
      -- vim.keymap.set('n', '<leader>gq', ':GitConflictQf<CR>', {noremap = true, silent = true})

      vim.api.nvim_create_autocmd("User", {
        pattern = "GitConflictDetected",
        callback = function()
          vim.notify("Conflict detected in file " .. vim.api.nvim_buf_get_name(0))
          vim.cmd("LspStop")
        end,
      })

      vim.api.nvim_create_autocmd("User", {
        pattern = "GitConflictResolved",
        callback = function()
          vim.cmd("LspRestart")
        end,
      })
    end,
  },
}
