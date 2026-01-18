-- | Keymap     | Action     | What are you doing              |
-- | ---------- | ---------- | ------------------------------- |
-- | `<space>j` | **Join**   | Junta varias líneas en una sola |
-- | `<space>s` | **Split**  | Separa en varias líneas         |
-- | `<space>m` | **Toggle** | Alterna entre split ↔ join      |
return {
  'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>s' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup({})
  end,
}
