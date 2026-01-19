return function(capabilities)
  vim.lsp.config("rust_analyzer", {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    capabilities = vim.tbl_deep_extend("force", {}, capabilities, {
      experimental = {
        commands = {
          commands = {
            "rust-analyzer.showReferences",
            "rust-analyzer.runSingle",
            "rust-analyzer.debugSingle",
          },
        },
        serverStatusNotification = true,
      },
    }),
    settings = {
      ["rust-analyzer"] = {
        diagnostics = { enable = false },
      },
    },
  })
end
