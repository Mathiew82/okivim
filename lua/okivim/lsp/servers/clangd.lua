return function(capabilities)
  vim.lsp.config("clangd", {
    capabilities = capabilities,
    cmd = {
      "clangd",
      "--background-index",
      "--clang-tidy",
      "--completion-style=detailed",
      "--header-insertion=iwyu",
    },
  })
end
