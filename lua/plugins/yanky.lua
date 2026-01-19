return {
  {
    "gbprod/yanky.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("yanky").setup({})
      require("telescope").load_extension("yank_history")

      vim.keymap.set("n", "<leader>h", function()
        require("telescope").extensions.yank_history.yank_history({})
      end, { desc = "Yank history" })
    end,
  },
}
