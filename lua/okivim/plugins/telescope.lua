return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({})

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ffh", function()
        builtin.find_files({
          hidden = true,
        })
      end, {
        desc = "Find files + hidden",
      })

      vim.keymap.set("n", "<leader>ffa", function()
        builtin.find_files({
          hidden = true,
          no_ignore = true,
          no_ignore_parent = true,
        })
      end, {
        desc = "Find all files",
      })
    end,
  },
}
