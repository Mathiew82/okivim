local M = {}

-- Servers
M.servers = {
  "lua_ls",
  "pyright",
  "vtsls",
  "vue_ls",
  "cssls",
  "eslint",
  "rust_analyzer",
  "docker_compose_language_service",
  "tailwindcss",
  "taplo",
  "bashls",
  "jsonls",
  "yamlls",
  "phpactor",
}

-- Keymaps
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspKeymaps", { clear = true }),
  callback = function(ev)
    local opts = { buffer = ev.buf, silent = true }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
  end,
})

-- Capabilities
local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()

if ok then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = { "documentation", "detail", "additionalTextEdits" },
}
capabilities.textDocument.completion.completionItem.documentationFormat = {
  "markdown",
  "plaintext",
}

M.capabilities = capabilities

local function load_servers(capabilities_param)
  local files = vim.fs.find(function(name)
    return name:match("%.lua$") ~= nil
  end, {
    path = vim.fn.stdpath("config") .. "/lua/lsp/servers",
    type = "file",
  })

  table.sort(files)

  for _, file in ipairs(files) do
    local mod = file
        :gsub("^" .. vim.pesc(vim.fn.stdpath("config") .. "/lua/"), "")
        :gsub("%.lua$", "")
        :gsub("/", ".")

    local okey, setup = pcall(require, mod)
    if okey and type(setup) == "function" then
      setup(capabilities_param)
    else
      vim.notify(("LSP server module failed: %s"):format(mod), vim.log.levels.WARN)
    end
  end
end

-- Load servers
load_servers(capabilities)

vim.lsp.enable(M.servers)

return M
