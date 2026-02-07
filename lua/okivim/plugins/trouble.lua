local function t() return require("trouble") end

return {
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        function() t().toggle("diagnostics") end,
        desc = "Trouble: Diagnostics",
      },
      {
        "<leader>xX",
        function() t().toggle("diagnostics", { filter = { buf = 0 } }) end,
        desc = "Trouble: Buffer Diagnostics",
      },
      {
        "<leader>cs",
        function() t().toggle("symbols", { focus = false }) end,
        desc = "Trouble: Symbols",
      },
      {
        "<leader>cl",
        function() t().toggle("lsp", { focus = false, win = { position = "right" } }) end,
        desc = "Trouble: LSP",
      },
      {
        "<leader>xL",
        function() t().toggle("loclist") end,
        desc = "Trouble: Location List",
      },
      {
        "<leader>xQ",
        function() t().toggle("qflist") end,
        desc = "Trouble: Quickfix List",
      },
    },
  },
}
