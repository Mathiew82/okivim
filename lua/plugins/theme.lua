return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- se carga antes que otros plugins
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

