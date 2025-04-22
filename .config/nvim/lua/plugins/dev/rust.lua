return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          -- rust-analyzer language server configuration
          ["rust-analyzer"] = {

            check = {
              extraEnv = {
                ["DYLD_FALLBACK_LIBRARY_PATH"] = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/",
              },
            },

            files = {
              excludeDirs = {
                ".direnv",
                ".git",
                ".github",
                ".gitlab",
                "bin",
                "node_modules",
                "target",
                "venv",
                ".venv",
                "EventWrapper",
              },
            },
          },
        },
      },

      dap = {
        adapter = {
          type = "executable",
          command = "lldb",
          name = "rt_lldb",
        },
      },
    },
    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend("force", vim.g.rustaceanvim or {}, opts or {})

      -- Setup DAP configurations for Rust
      local dap = require("dap")
      dap.configurations.rust = {
        {
          name = "Debug Rust tests",
          type = "rt_lldb",
          request = "launch",
          program = function()
            -- Get the test binary path
            return vim.fn.input("Path to binary: ", vim.fn.getcwd() .. "/target/debug/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = function()
            -- This allows you to pass arguments to the test binary
            local args_string = vim.fn.input("Arguments: ")
            return vim.fn.split(args_string, " ", true)
          end,
          env = function()
            local variables = {}
            local env_string = vim.fn.input("Environment variables (VAR=value VAR2=value2): ")
            for _, v in pairs(vim.fn.split(env_string, " ", true)) do
              local name, value = unpack(vim.fn.split(v, "="))
              variables[name] = value
            end
            return variables
          end,
          runInTerminal = false,
        },
        {
          name = "Debug Rust file",
          type = "rt_lldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to binary: ", vim.fn.getcwd() .. "/target/debug/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
          runInTerminal = false,
        },
      }
    end,
    keymaps = {
      { "n", "<leader>co", "<cmd>RustLsp codeAction removeUnusedImports<cr>", desc = "Remove unused imports" },
      {
        "n",
        "<leader>rdt",
        function()
          require("dap").continue()
        end,
        desc = "Debug Rust test",
      },
      { "n", "<leader>rdf", "<cmd>RustLsp debuggables<cr>", desc = "List Rust debuggables" },
    },
  },
}
