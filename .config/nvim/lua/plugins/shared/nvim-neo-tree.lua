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
        },
      },
    },
  },
}
