-- Servers
local servers = {
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

local base_config = {
  capabilities = capabilities,
}

-- simple servers
local simple_servers = {
  "pyright",
  "eslint",
  "bashls",
  "jsonls",
  "yamlls",
}

for _, server in ipairs(simple_servers) do
  vim.lsp.config(server, base_config)
end

-- helpers
local function mason_bin(exe)
  local bin = vim.fn.stdpath("data") .. "/mason/bin/"
  return vim.fn.has("win32") == 1 and bin .. exe .. ".cmd" or bin .. exe
end

-- lua
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = { diagnostics = { globals = { "vim" } } },
  },
})

-- vtsls
local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vim.fn.stdpath("data")
      .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
  languages = { "vue" },
  configNamespace = "typescript",
}

vim.lsp.config("vtsls", {
  cmd = { mason_bin("vtsls"), "--stdio" },
  init_options = { hostInfo = "neovim" },
  settings = {
    vtsls = {
      tsserver = { globalPlugins = { vue_plugin } },
    },
  },
  filetypes = { "typescript", "javascript", "vue" },
  capabilities = capabilities,
})

-- vue
vim.lsp.config("vue_ls", {
  cmd = { "vue-language-server", "--stdio" },
  filetypes = { "vue" },
  capabilities = capabilities,
})

-- css
local css_caps = vim.tbl_deep_extend("force", {}, capabilities)
css_caps.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config("cssls", {
  capabilities = css_caps,
})

-- rust
vim.lsp.config("rust_analyzer", {
  cmd = { "rust-analyzer" },
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
  filetypes = { "rust" },
  settings = {
    ["rust-analyzer"] = { diagnostics = { enable = false } },
  },
})

-- docker
vim.lsp.config("docker_compose_language_service", {
  cmd = { "docker-compose-langserver", "--stdio" },
  capabilities = capabilities,
  filetypes = { "yaml.docker-compose" },
})

-- tailwind
local tailwind_filetypes = {
  "astro",
  "handlebars",
  "html",
  "htmlangular",
  "mustache",
  "php",
  "twig",
  "css",
  "less",
  "postcss",
  "sass",
  "scss",
  "stylus",
  "javascriptreact",
  "typescriptreact",
  "vue",
  "svelte",
}
local tailwind_capabilities = vim.tbl_deep_extend("force", {}, capabilities, {
  workspace = {
    didChangeWatchedFiles = { dynamicRegistration = true },
  },
})

vim.lsp.config("tailwindcss", {
  cmd = { "tailwindcss-language-server", "--stdio" },
  capabilities = tailwind_capabilities,
  filetypes = tailwind_filetypes,
})

-- taplo
vim.lsp.config("taplo", {
  cmd = { "taplo", "lsp", "stdio" },
  capabilities = capabilities,
  filetypes = { "toml" },
})

vim.lsp.enable(servers)

return { servers = servers }
