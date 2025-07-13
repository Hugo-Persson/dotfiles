local filesystem = require("neo-tree.sources.filesystem")
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({ toggle = true, position = "float", reveal = true, dir = LazyVim.root() })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
    },
    opts = {
      filesystem = {
        hide_dotfiles = false,
        always_show = { -- remains visible even if other settings would normally hide it
          "env",
        },
        always_show_by_pattern = { -- uses glob style patterns
          ".env*",
        },
        commands = {
          -- over write default 'delete' command to 'trash'.
          delete = function(state)
            local inputs = require("neo-tree.ui.inputs")
            local path = state.tree:get_node().path
            local msg = "Are you sure you want to trash " .. path
            inputs.confirm(msg, function(confirmed)
              if not confirmed then
                return
              end

              vim.fn.system({ "trash", vim.fn.fnameescape(path) })
              require("neo-tree.sources.manager").refresh(state.name)
            end)
          end,

          -- over write default 'delete_visual' command to 'trash' x n.
          delete_visual = function(state, selected_nodes)
            local inputs = require("neo-tree.ui.inputs")

            -- get table items count
            function GetTableLen(tbl)
              local len = 0
              for n in pairs(tbl) do
                len = len + 1
              end
              return len
            end

            local count = GetTableLen(selected_nodes)
            local msg = "Are you sure you want to trash " .. count .. " files ?"
            inputs.confirm(msg, function(confirmed)
              if not confirmed then
                return
              end
              for _, node in ipairs(selected_nodes) do
                vim.fn.system({ "trash", vim.fn.fnameescape(node.path) })
              end
              require("neo-tree.sources.manager").refresh(state.name)
            end)
          end,
        },
      },
      window = {
        mappings = {
          ["YY"] = {
            function(state)
              local node = state.tree:get_node()
              vim.fn.setreg("+", node.name, "c")
            end,
            desc = "Copy Name to Clipboard",
          },

          ["YP"] = {
            function(state)
              local node = state.tree:get_node()
              vim.fn.setreg("+", node.get_id(), "c")
            end,
            desc = "Copy Path to Clipboard",
          },
          ["S"] = {
            function(state)
              local node = state.tree:get_node()
              local path = node:get_id()
              vim.fn.jobstart({ "open", "-a", "Dropshelf", path }, { detach = true })
            end,
            desc = "Send to dropshelf",
          },

          ["F"] = {
            function(state)
              local node = state.tree:get_node()
              local path = node:get_id()
              vim.fn.jobstart({ "open", "-R", path }, { detach = true })
            end,
            desc = "Open in Finder",
          },
        },
      },
    },
  },
}
