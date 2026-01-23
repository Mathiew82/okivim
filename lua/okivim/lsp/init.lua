local M = {}

-- Styles
local border = "rounded"

do
  local orig = vim.lsp.util.open_floating_preview
  ---@diagnostic disable-next-line: duplicate-set-field
  function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or border
    return orig(contents, syntax, opts, ...)
  end
end

vim.diagnostic.config({
  float = { border = border },
})

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "●",
      [vim.diagnostic.severity.WARN]  = "●",
      [vim.diagnostic.severity.HINT]  = "●",
      [vim.diagnostic.severity.INFO]  = "●",
    },
    numhl = {},
    linehl = {},
  },
})

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

    vim.keymap.set("n", "[d", function()
      vim.diagnostic.jump({ count = -1 })
    end, opts)

    vim.keymap.set("n", "]d", function()
      vim.diagnostic.jump({ count = 1 })
    end, opts)

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

-- Functions
local servers_dir = vim.fn.stdpath("config") .. "/lua/okivim/lsp/servers"

local function discover_servers()
  local servers = {}

  for name, t in vim.fs.dir(servers_dir) do
    if t == "file" and name:sub(-4) == ".lua" then
      local server = name:sub(1, -5)
      table.insert(servers, server)
    end
  end

  table.sort(servers)
  return servers
end

local function load_servers(capabilities_param, servers)
  for _, server in ipairs(servers) do
    local mod = "okivim.lsp.servers." .. server
    local okey, setup = pcall(require, mod)

    if okey and type(setup) == "function" then
      setup(capabilities_param)
    else
      vim.notify(("LSP server module failed: %s"):format(mod), vim.log.levels.WARN)
    end
  end
end

-- Discover + load server configs
M.servers = discover_servers()
load_servers(capabilities, M.servers)

-- Enable LSPs
vim.lsp.enable(M.servers)

return M
