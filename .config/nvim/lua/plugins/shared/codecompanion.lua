return {
  {
    "olimorris/codecompanion.nvim", -- The KING of AI programming
    dependencies = {
      "j-hui/fidget.nvim", -- Display status
      "ravitemer/codecompanion-history.nvim", -- Save and load conversation history
      {
        "HakonHarnes/img-clip.nvim", -- Share images with the chat buffer
        event = "VeryLazy",
        cmd = "PasteImage",
        opts = {
          filetypes = {
            codecompanion = {
              prompt_for_file_name = false,
              template = "[Image]($FILE_PATH)",
              use_absolute_path = true,
            },
          },
        },
      },
    },
    opts = {
      extensions = {
        history = {
          enabled = true,
          opts = {
            keymap = "gh",
            auto_generate_title = true,
            continue_last_chat = false,
            delete_on_clearing_chat = false,
            picker = "snacks",
            enable_logging = false,
            dir_to_save = vim.fn.stdpath("data") .. "/codecompanion-history",
          },
        },
      },
      adapters = {
        copilot = function()
          return require("codecompanion.adapters").extend("copilot", {
            schema = {
              model = {
                default = "claude-sonnet-4",
              },
            },
          })
        end,
      },
      prompt_library = {
        ["GenerateFunctionName"] = {
          strategy = "chat",
          description = "Generate a descriptive function name based on code logic",
          opts = {
            index = 1,
            is_slash_cmd = false,
            auto_submit = true,
            short_name = "fname",
          },
          prompts = {
            {
              role = "user",
              content = function(context)
                local code = require("codecompanion.helpers.actions").get_code(context.start_line, context.end_line)

                return [[Please generate a descriptive and idiomatic function name for the following code snippet. 
The name should:
- Clearly communicate the function's purpose
- Follow the naming conventions of the language (]] .. context.filetype .. [[) 
- Be concise yet descriptive
- Not include generic terms like "function", "method", or "handler" unless necessary

Here's the code:

```]] .. context.filetype .. [[
]] .. code .. [[
```

Please respond ONLY with the suggested function name, nothing else.]]
              end,
              opts = {
                contains_code = true,
              },
            },
          },
        },
        strategies = {
          chat = {
            adapter = "copilot",
          },

          slash_commands = {
            ["buffer"] = {
              keymaps = {
                modes = {
                  i = "<C-b>",
                },
              },
            },
            ["fetch"] = {
              keymaps = {
                modes = {
                  i = "<C-f>",
                },
              },
            },
            ["help"] = {
              opts = {
                max_lines = 1000,
              },
            },
            ["image"] = {
              keymaps = {
                modes = {
                  i = "<C-i>",
                },
              },
              opts = {
                dirs = { "~/Documents/Screenshots" },
              },
            },
          },
          tools = {
            opts = {
              auto_submit_success = false,
              auto_submit_errors = false,
            },
          },
        },
        inline = { adapter = "copilot" },
      },
      display = {
        action_palette = {
          provider = "default",
        },
        chat = {
          -- show_references = true,
          -- show_header_separator = false,
          -- show_settings = false,
        },
        diff = {
          provider = "mini_diff",
        },
      },
      opts = {
        log_level = "DEBUG",
      },
    },
    keys = {

      {
        --"<C-y>",
        "<Leader>cca",
        "<cmd>CodeCompanionActions<CR>",
        desc = "Open the action palette",
        mode = { "n", "v" },
      },
      {
        "<Leader>ccc",
        "<cmd>CodeCompanionChat Toggle<CR>",
        desc = "Toggle a chat buffer",
        mode = { "n", "v" },
      },
      {
        "<LocalLeader>a",
        "<cmd>CodeCompanionChat Add<CR>",
        desc = "Add code to a chat buffer",
        mode = { "v" },
      },
      {
        "<Leader>ccf",

        function()
          -- Select around the current function using mini.ai
          vim.cmd("normal! vaf")
          require("codecompanion").prompt("GenerateFunctionName")
        end,
        desc = "Generate function name",
      },
    },
    init = function()
      require("plugins.shared.codecompanion.fidget-spinner"):init()
    end,
  },
}
