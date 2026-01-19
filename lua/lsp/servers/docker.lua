return function(capabilities)
  vim.lsp.config("docker_compose_language_service", {
    cmd = { "docker-compose-langserver", "--stdio" },
    filetypes = { "yaml.docker-compose" },
    capabilities = capabilities,
  })
end
