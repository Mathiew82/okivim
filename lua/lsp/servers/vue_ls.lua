return function(capabilities)
  vim.lsp.config("vue_ls", {
    cmd = { "vue-language-server", "--stdio" },
    filetypes = { "vue" },
    capabilities = capabilities,
  })
end
