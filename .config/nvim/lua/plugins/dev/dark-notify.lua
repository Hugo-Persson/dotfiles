return {
  {
    "cormacrelf/dark-notify",
    dependencies = {
      "catppuccin/nvim",
    },

    config = function()
      require("dark_notify").run()
    end,
  },
}
