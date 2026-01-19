return function(capabilities)
  local css_caps = vim.tbl_deep_extend("force", {}, capabilities)
  css_caps.textDocument.completion.completionItem.snippetSupport = true

  vim.lsp.config("cssls", {
    capabilities = css_caps,
  })
end
