return {
  "dhananjaylatkar/cscope_maps.nvim",
  dependencies = {
    "folke/which-key.nvim", -- optional [for whichkey hints]
    "nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
    "ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
    "echasnovski/mini.pick", -- optional [for picker="mini-pick"]
    "nvim-tree/nvim-web-devicons", -- optional [for devicons in telescope, fzf or mini.pick]
  },
  opts = {
    prefix = "<leader>cc", -- prefix to trigger maps
    -- USE EMPTY FOR DEFAULT OPTIONS
    -- DEFAULTS ARE LISTED BELOW
  },
}
