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

          ["d"] = {
            function(state)
              local node = state.tree:get_node()
              local path = node:get_id()
              local name = node.name
              
              -- Confirm deletion
              local choice = vim.fn.confirm("Delete " .. name .. "?", "&Yes\n&No", 2)
              if choice == 1 then
                vim.fn.jobstart({ "trash", path }, {
                  on_exit = function(_, exit_code)
                    if exit_code == 0 then
                      vim.notify("Moved to trash: " .. name)
                      -- Refresh the tree
                      require("neo-tree.sources.manager").refresh("filesystem")
                    else
                      vim.notify("Failed to move to trash: " .. name, vim.log.levels.ERROR)
                    end
                  end
                })
              end
            end,
            desc = "Delete (move to trash)",
          },
        },
      },
    },
  },
}
