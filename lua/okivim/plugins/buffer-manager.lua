return {
  {
    "j-morano/buffer_manager.nvim",
    config = function()
      require("buffer_manager").setup()

      vim.keymap.set("n", "<leader>bm", function()
        require("buffer_manager.ui").toggle_quick_menu()
      end)
    end,
  }
}
