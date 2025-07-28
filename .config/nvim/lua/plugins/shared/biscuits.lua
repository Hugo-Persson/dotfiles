return {
  {
    "code-biscuits/nvim-biscuits",
    event = "BufReadPost",
    opts = {
      default_config = {
        max_length = 80,
        min_distance = 5,
        prefix_string = " 📎 ",
      },
      language_config = {
        html = {
          prefix_string = " 🌐 ",
        },
        typescript = {
          prefix_string = " ✨ ",
          max_length = 80,
        },
        python = {
          disabled = true,
        },
      },
    },
  },
}
