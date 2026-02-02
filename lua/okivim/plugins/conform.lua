return {
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          javascript      = { "prettierd" },
          typescript      = { "prettierd" },
          javascriptreact = { "prettierd" },
          typescriptreact = { "prettierd" },
          json            = { "prettierd" },
          scss            = { "stylelint", "prettierd" },
          css             = { "stylelint", "prettierd" },
          html            = { "prettierd" },
          vue             = { "prettierd" },
        },

        formatters = {
          stylelint = {
            timeout_ms = 3000,
          },
        },

        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end,
  },
}
