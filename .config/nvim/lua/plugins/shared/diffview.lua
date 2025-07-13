return {
  {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local actions = require("diffview.actions")
      
      require("diffview").setup({
        diff_binaries = false,
        enhanced_diff_hl = true,
        git_cmd = { "git" },
        use_icons = true,
        show_help_hints = true,
        watch_index = true,
        icons = {
          folder_closed = "",
          folder_open = "",
        },
        signs = {
          fold_closed = "",
          fold_open = "",
          done = "✓",
        },
        view = {
          default = {
            layout = "diff2_horizontal",
            winbar_info = false,
          },
          merge_tool = {
            layout = "diff3_horizontal",
            disable_diagnostics = true,
            winbar_info = true,
          },
          file_history = {
            layout = "diff2_horizontal",
            winbar_info = false,
          },
        },
        file_panel = {
          listing_style = "tree",
          tree_options = {
            flatten_dirs = true,
            folder_statuses = "only_folded",
          },
          win_config = {
            position = "left",
            width = 35,
            win_opts = {}
          },
        },
        file_history_panel = {
          log_options = {
            git = {
              single_file = {
                follow = false,
                all = false,
                merges = false,
                no_merges = false,
                reverse = false,
              },
              multi_file = {
                follow = false,
                all = false,
                merges = false,
                no_merges = false,
                reverse = false,
              },
            },
          },
          win_config = {
            position = "bottom",
            height = 16,
            win_opts = {}
          },
        },
        commit_log_panel = {
          win_config = {
            win_opts = {},
          }
        },
        default_args = {
          DiffviewOpen = {},
          DiffviewFileHistory = {},
        },
        hooks = {
          diff_buf_read = function(bufnr)
            -- Change local options in diff buffers
            vim.opt_local.wrap = false
            vim.opt_local.list = false
            vim.opt_local.colorcolumn = "80"
          end,
          view_opened = function(view)
            -- Highlight 'DiffChange' as 'DiffDelete' on the left, and 'DiffAdd' on
            -- the right.
            local function target_winid(tabpage, position)
              local winids = vim.api.nvim_tabpage_list_wins(tabpage)
              for _, winid in ipairs(winids) do
                if vim.api.nvim_win_get_config(winid).win and vim.api.nvim_win_get_config(winid).win == position then
                  return winid
                end
              end
              return winids[position] or winids[1]
            end
          end,
        },
        keymaps = {
          disable_defaults = false,
          view = {
            {
              "n",
              "<tab>",
              actions.select_next_entry,
              { desc = "Open the diff for the next file" }
            },
            {
              "n",
              "<s-tab>",
              actions.select_prev_entry,
              { desc = "Open the diff for the previous file" }
            },
            {
              "n",
              "gf",
              actions.goto_file,
              { desc = "Open the file in a new buffer" }
            },
            {
              "n",
              "<C-w><C-f>",
              actions.goto_file_split,
              { desc = "Open the file in a new split" }
            },
            {
              "n",
              "<C-w>gf",
              actions.goto_file_tab,
              { desc = "Open the file in a new tabpage" }
            },
            {
              "n",
              "<leader>e",
              actions.focus_files,
              { desc = "Bring focus to the file panel" }
            },
            {
              "n",
              "<leader>b",
              actions.toggle_files,
              { desc = "Toggle the file panel." }
            },
            {
              "n",
              "g<C-x>",
              actions.cycle_layout,
              { desc = "Cycle through available layouts." }
            },
            {
              "n",
              "[x",
              actions.prev_conflict,
              { desc = "In the merge-tool: jump to the previous conflict" }
            },
            {
              "n",
              "]x",
              actions.next_conflict,
              { desc = "In the merge-tool: jump to the next conflict" }
            },
            {
              "n",
              "<leader>co",
              actions.conflict_choose("ours"),
              { desc = "Choose the OURS version of a conflict" }
            },
            {
              "n",
              "<leader>ct",
              actions.conflict_choose("theirs"),
              { desc = "Choose the THEIRS version of a conflict" }
            },
            {
              "n",
              "<leader>cb",
              actions.conflict_choose("base"),
              { desc = "Choose the BASE version of a conflict" }
            },
            {
              "n",
              "<leader>ca",
              actions.conflict_choose("all"),
              { desc = "Choose all the versions of a conflict" }
            },
            {
              "n",
              "dx",
              actions.conflict_choose("none"),
              { desc = "Delete the conflict region" }
            },
          },
          diff1 = {
            { "n", "g?", actions.help({ "view", "diff1" }), { desc = "Open the help panel" } },
          },
          diff2 = {
            { "n", "g?", actions.help({ "view", "diff2" }), { desc = "Open the help panel" } },
          },
          diff3 = {
            {
              "n",
              "g?",
              actions.help({ "view", "diff3" }),
              { desc = "Open the help panel" }
            },
          },
          diff4 = {
            {
              "n",
              "g?",
              actions.help({ "view", "diff4" }),
              { desc = "Open the help panel" }
            },
          },
          file_panel = {
            {
              "n",
              "j",
              actions.next_entry,
              { desc = "Bring the cursor to the next file entry" }
            },
            {
              "n",
              "<down>",
              actions.next_entry,
              { desc = "Bring the cursor to the next file entry" }
            },
            {
              "n",
              "k",
              actions.prev_entry,
              { desc = "Bring the cursor to the previous file entry." }
            },
            {
              "n",
              "<up>",
              actions.prev_entry,
              { desc = "Bring the cursor to the previous file entry." }
            },
            {
              "n",
              "<cr>",
              actions.select_entry,
              { desc = "Open the diff for the selected entry." }
            },
            {
              "n",
              "o",
              actions.select_entry,
              { desc = "Open the diff for the selected entry." }
            },
            {
              "n",
              "<2-LeftMouse>",
              actions.select_entry,
              { desc = "Open the diff for the selected entry." }
            },
            {
              "n",
              "-",
              actions.toggle_stage_entry,
              { desc = "Stage / unstage the selected entry." }
            },
            {
              "n",
              "S",
              actions.stage_all,
              { desc = "Stage all entries." }
            },
            {
              "n",
              "U",
              actions.unstage_all,
              { desc = "Unstage all entries." }
            },
            {
              "n",
              "X",
              actions.restore_entry,
              { desc = "Restore entry to the state on the left side." }
            },
            {
              "n",
              "L",
              actions.open_commit_log,
              { desc = "Open the commit log panel." }
            },
            {
              "n",
              "<c-b>",
              actions.scroll_view(-0.25),
              { desc = "Scroll the view up" }
            },
            {
              "n",
              "<c-f>",
              actions.scroll_view(0.25),
              { desc = "Scroll the view down" }
            },
            {
              "n",
              "<tab>",
              actions.select_next_entry,
              { desc = "Open the diff for the next file" }
            },
            {
              "n",
              "<s-tab>",
              actions.select_prev_entry,
              { desc = "Open the diff for the previous file" }
            },
            {
              "n",
              "gf",
              actions.goto_file,
              { desc = "Open the file in a new buffer" }
            },
            {
              "n",
              "<C-w><C-f>",
              actions.goto_file_split,
              { desc = "Open the file in a new split" }
            },
            {
              "n",
              "<C-w>gf",
              actions.goto_file_tab,
              { desc = "Open the file in a new tabpage" }
            },
            {
              "n",
              "i",
              actions.listing_style,
              { desc = "Toggle between 'list' and 'tree' views" }
            },
            {
              "n",
              "f",
              actions.toggle_flatten_dirs,
              { desc = "Flatten empty subdirectories in tree listing style." }
            },
            {
              "n",
              "R",
              actions.refresh_files,
              { desc = "Update stats and entries in the file list." }
            },
            {
              "n",
              "<leader>e",
              actions.focus_files,
              { desc = "Bring focus to the file panel" }
            },
            {
              "n",
              "<leader>b",
              actions.toggle_files,
              { desc = "Toggle the file panel" }
            },
            {
              "n",
              "g<C-x>",
              actions.cycle_layout,
              { desc = "Cycle available layouts" }
            },
            {
              "n",
              "g?",
              actions.help("file_panel"),
              { desc = "Open the help panel" }
            },
          },
          file_history_panel = {
            {
              "n",
              "g!",
              actions.options,
              { desc = "Open the option panel" }
            },
            {
              "n",
              "<C-A-d>",
              actions.open_in_diffview,
              { desc = "Open the entry under the cursor in a diffview" }
            },
            {
              "n",
              "y",
              actions.copy_hash,
              { desc = "Copy the commit hash of the entry under the cursor" }
            },
            {
              "n",
              "L",
              actions.open_commit_log,
              { desc = "Show commit details" }
            },
            {
              "n",
              "zR",
              actions.open_all_folds,
              { desc = "Expand all folds" }
            },
            {
              "n",
              "zM",
              actions.close_all_folds,
              { desc = "Collapse all folds" }
            },
            {
              "n",
              "j",
              actions.next_entry,
              { desc = "Bring the cursor to the next file entry" }
            },
            {
              "n",
              "<down>",
              actions.next_entry,
              { desc = "Bring the cursor to the next file entry" }
            },
            {
              "n",
              "k",
              actions.prev_entry,
              { desc = "Bring the cursor to the previous file entry." }
            },
            {
              "n",
              "<up>",
              actions.prev_entry,
              { desc = "Bring the cursor to the previous file entry." }
            },
            {
              "n",
              "<cr>",
              actions.select_entry,
              { desc = "Open the diff for the selected entry." }
            },
            {
              "n",
              "o",
              actions.select_entry,
              { desc = "Open the diff for the selected entry." }
            },
            {
              "n",
              "<2-LeftMouse>",
              actions.select_entry,
              { desc = "Open the diff for the selected entry." }
            },
            {
              "n",
              "<c-b>",
              actions.scroll_view(-0.25),
              { desc = "Scroll the view up" }
            },
            {
              "n",
              "<c-f>",
              actions.scroll_view(0.25),
              { desc = "Scroll the view down" }
            },
            {
              "n",
              "<tab>",
              actions.select_next_entry,
              { desc = "Open the diff for the next file" }
            },
            {
              "n",
              "<s-tab>",
              actions.select_prev_entry,
              { desc = "Open the diff for the previous file" }
            },
            {
              "n",
              "gf",
              actions.goto_file,
              { desc = "Open the file in a new buffer" }
            },
            {
              "n",
              "<C-w><C-f>",
              actions.goto_file_split,
              { desc = "Open the file in a new split" }
            },
            {
              "n",
              "<C-w>gf",
              actions.goto_file_tab,
              { desc = "Open the file in a new tabpage" }
            },
            {
              "n",
              "<leader>e",
              actions.focus_files,
              { desc = "Bring focus to the file panel" }
            },
            {
              "n",
              "<leader>b",
              actions.toggle_files,
              { desc = "Toggle the file panel" }
            },
            {
              "n",
              "g<C-x>",
              actions.cycle_layout,
              { desc = "Cycle available layouts" }
            },
            {
              "n",
              "g?",
              actions.help("file_history_panel"),
              { desc = "Open the help panel" }
            },
          },
          option_panel = {
            {
              "n",
              "<tab>",
              actions.select_entry,
              { desc = "Change the current option" }
            },
            {
              "n",
              "q",
              actions.close,
              { desc = "Close the panel" }
            },
            {
              "n",
              "g?",
              actions.help("option_panel"),
              { desc = "Open the help panel" }
            },
          },
          help_panel = {
            {
              "n",
              "q",
              actions.close,
              { desc = "Close help menu" }
            },
            {
              "n",
              "<esc>",
              actions.close,
              { desc = "Close help menu" }
            },
          },
        },
      })

      -- Set up Catppuccin integration
      local function setup_catppuccin_integration()
        -- Check if Catppuccin is available
        local catppuccin_available, catppuccin = pcall(require, "catppuccin.palettes")
        if not catppuccin_available then
          return
        end

        -- Get the current flavor
        local flavor = vim.g.catppuccin_flavour or "mocha"
        local colors = catppuccin.get_palette(flavor)

        -- Define custom highlight groups for diffview with Catppuccin colors
        local highlights = {
          -- File panel highlights
          DiffviewFilePanelTitle = { fg = colors.lavender, style = { "bold" } },
          DiffviewFilePanelCounter = { fg = colors.mauve },
          DiffviewFilePanelFileName = { fg = colors.text },
          DiffviewFilePanelPath = { fg = colors.overlay1 },
          DiffviewFilePanelInsertions = { fg = colors.green },
          DiffviewFilePanelDeletions = { fg = colors.red },
          DiffviewFilePanelConflicts = { fg = colors.yellow },
          
          -- Status column highlights
          DiffviewStatusAdded = { fg = colors.green },
          DiffviewStatusUntracked = { fg = colors.green },
          DiffviewStatusModified = { fg = colors.yellow },
          DiffviewStatusRenamed = { fg = colors.blue },
          DiffviewStatusCopied = { fg = colors.blue },
          DiffviewStatusTypeChange = { fg = colors.yellow },
          DiffviewStatusUnmerged = { fg = colors.red },
          DiffviewStatusUnknown = { fg = colors.overlay1 },
          DiffviewStatusDeleted = { fg = colors.red },
          DiffviewStatusBroken = { fg = colors.red },
          DiffviewStatusIgnored = { fg = colors.overlay0 },
          
          -- Diff highlights
          DiffviewDiffAdd = { bg = colors.green, fg = colors.base },
          DiffviewDiffChange = { bg = colors.yellow, fg = colors.base },
          DiffviewDiffDelete = { bg = colors.red, fg = colors.base },
          DiffviewDiffText = { bg = colors.mauve, fg = colors.base },
          
          -- File history panel
          DiffviewFilePanelRootPath = { fg = colors.blue, style = { "bold" } },
          DiffviewFilePanelSelected = { bg = colors.surface0, style = { "bold" } },
          
          -- Reference highlights
          DiffviewReference = { fg = colors.lavender, style = { "bold" } },
          DiffviewHash = { fg = colors.blue },
          DiffviewCommitAuthor = { fg = colors.mauve },
          DiffviewCommitAuthorTime = { fg = colors.overlay1 },
          
          -- Border and UI elements
          DiffviewNormal = { fg = colors.text, bg = colors.base },
          DiffviewCursorLine = { bg = colors.surface0 },
          DiffviewVertSplit = { fg = colors.surface0 },
          DiffviewSignColumn = { bg = colors.base },
          DiffviewStatusLine = { fg = colors.text, bg = colors.mantle },
          DiffviewStatusLineNC = { fg = colors.overlay1, bg = colors.mantle },
          DiffviewEndOfBuffer = { fg = colors.base },
          
          -- Fold highlights
          DiffviewFolded = { fg = colors.overlay1, bg = colors.surface0 },
          DiffviewFoldColumn = { fg = colors.overlay0, bg = colors.base },
        }

        -- Apply the highlights
        for group, opts in pairs(highlights) do
          local hl_opts = { fg = opts.fg, bg = opts.bg }
          if opts.style then
            for _, style in ipairs(opts.style) do
              hl_opts[style] = true
            end
          end
          vim.api.nvim_set_hl(0, group, hl_opts)
        end
      end

      -- Set up the integration after colorscheme loads
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "catppuccin*",
        callback = setup_catppuccin_integration,
      })

      -- Also set up immediately if catppuccin is already loaded
      if vim.g.colors_name and vim.g.colors_name:match("catppuccin") then
        setup_catppuccin_integration()
      end
    end,
  },
}
