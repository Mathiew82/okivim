return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local parser_dir = vim.fn.stdpath("data") .. "/ts-parsers"

    vim.opt.rtp:prepend(parser_dir)

    require("nvim-treesitter").setup({
      install_dir = parser_dir,
    })

    require("nvim-treesitter").install({
      "lua", "html", "css", "scss",
      "javascript", "typescript", "tsx",
      "vue", "yaml", "bash", "json", "toml",
      "python", "rust",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "vue", "html", "css", "scss", "javascript", "typescript", "tsx",
        "lua", "json", "yaml", "bash", "toml", "python", "rust",
      },
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
