return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local parser_dir = vim.fn.stdpath("data") .. "/ts-parsers"
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      install_dir = parser_dir,
    })

    treesitter.install({
      "c", "cpp", "lua", "html", "css", "scss",
      "javascript", "typescript", "tsx",
      "markdown", "markdown_inline",
      "vue", "yaml", "bash", "json", "toml", "php",
      "python", "rust",
    })

    vim.filetype.add({
      extension = {
        mdx = "mdx",
      },
    })

    vim.treesitter.language.register("markdown", "mdx")

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "c", "cpp", "lua",
        "html", "css", "scss",
        "javascript", "typescript", "javascriptreact", "typescriptreact",
        "markdown", "mdx",
        "vue", "yaml", "bash", "json", "toml", "php",
        "python", "rust",
      },
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
