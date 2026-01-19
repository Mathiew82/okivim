return function(capabilities)
  vim.lsp.config("taplo", {
    cmd = { "taplo", "lsp", "stdio" },
    filetypes = { "toml" },
    capabilities = capabilities,
  })
end
