return {
   {
  "nvim-telescope/telescope.nvim", 
  keys = {
    {
      "<leader>fs",
    function()
      require("telescope.builtin").live_grep({
        additional_args = function(args)
          return vim.list_extend(args, {"--regexp", "-e", "\"[^\"]*", "-e", "'[^']*"})
        end
      })
    end,
      desc = "Search for content inside strings",
    },
  }
   }
}