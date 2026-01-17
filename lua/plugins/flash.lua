return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    config = function()
      local flash = require("flash")
      -- Keymaps
      vim.keymap.set({ "n", "x", "o" }, "zk", flash.jump, { desc = "Flash jump" })
      vim.keymap.set({ "n", "x", "o" }, "Zk", flash.treesitter, { desc = "Flash Treesitter" })
      vim.keymap.set("o", "r", flash.remote, { desc = "Remote flash" })
      vim.keymap.set({ "o", "x" }, "R", flash.treesitter_search, { desc = "TS search" })
      vim.keymap.set("c", "<C-s>", flash.toggle, { desc = "Toggle flash search" })
    end,
  },
}
