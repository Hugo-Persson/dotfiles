return {
  {
    "cormacrelf/dark-notify",
    dependencies = {
      "catppuccin/nvim",
    },
    event = "VeryLazy",
    config = function()
      vim.defer_fn(function()
        require("dark_notify").run()
      end, 500) -- Defer system call for 500ms after editor is ready
    end,
  },
}
