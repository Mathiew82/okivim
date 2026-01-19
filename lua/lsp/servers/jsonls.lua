return function(capabilities)
  vim.lsp.config("jsonls", { capabilities = capabilities })
end
