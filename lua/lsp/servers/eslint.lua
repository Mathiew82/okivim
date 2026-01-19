return function(capabilities)
  vim.lsp.config("eslint", { capabilities = capabilities })
end
