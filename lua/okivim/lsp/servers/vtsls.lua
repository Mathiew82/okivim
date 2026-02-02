local function mason_bin(exe)
  local bin = vim.fn.stdpath("data") .. "/mason/bin/"
  return vim.fn.has("win32") == 1 and bin .. exe .. ".cmd" or bin .. exe
end

local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vim.fn.stdpath("data")
      .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
  languages = { "vue" },
  configNamespace = "typescript",
}

return function(capabilities)
  vim.lsp.config("vtsls", {
    cmd = { mason_bin("vtsls"), "--stdio" },
    init_options = { hostInfo = "neovim" },
    settings = {
      vtsls = {
        tsserver = {
          globalPlugins = { vue_plugin },
        },
      },
    },
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue" },
    capabilities = capabilities,
  })
end
