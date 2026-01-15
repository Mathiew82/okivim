return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter")

    local languages = {
      "lua",
      "javascript",
      "typescript",
      "tsx",
      "vue",
      "json",
      "yaml",
      "bash",
      "html",
      "css",
      "toml",
      "rust",
    }

    treesitter.setup()
    treesitter.install(languages)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
