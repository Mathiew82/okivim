# Neovim Setup

This configuration is built from scratch, focused on speed, clarity and
full control over plugins and features.

## Requirements

- Neovim >= 0.11.2
- Git >= 2.19.0
- a Nerd Font to display some icons (optional)

---

## Dependencies

[See instructions](./dependencies.md)

---

## Installation

[See instructions](./installation.md)

---

## Language servers (managed by Mason)

These LSPs are automatically installed and enabled:

 - lua_ls
 - pyright
 - vtsls
 - vue_ls
 - cssls
 - eslint
 - rust_analyzer
 - docker_compose_language_service
 - tailwindcss
 - taplo
 - bashls
 - jsonls
 - yamlls
 - phpactor

---

## Plugin manager

-   **lazy.nvim**

Used to manage all plugins and allow easy setup on new machines.

---

## Installed Plugins

### Theme
- **catppuccin.nvim**
  https://github.com/catppuccin/nvim

### Autocomplete
- **nvim-cmp**
  https://github.com/hrsh7th/nvim-cmp

### LSP and Tools
- **nvim-lspconfig** (LSP configuration)
  https://github.com/neovim/nvim-lspconfig

- **mason.nvim** (LSP/DAP/formatters manager)
  https://github.com/williamboman/mason.nvim

- **conform.nvim** (formatter)
  https://github.com/stevearc/conform.nvim

### Coloring and syntax
- **nvim-treesitter**
  https://github.com/nvim-treesitter/nvim-treesitter

- **nvim-colorizer.lua**
  https://github.com/norcalli/nvim-colorizer.lua

### File Explorer
- **oil.nvim**
  https://github.com/stevearc/oil.nvim

### Search and navigation
- **telescope.nvim**
  https://github.com/nvim-telescope/telescope.nvim

### Git
- **gitsigns.nvim**
  https://github.com/lewis6991/gitsigns.nvim

### Interface
- **lualine.nvim** (status line)
  https://github.com/nvim-lualine/lualine.nvim

- **which-key.nvim** (keymaps help)
  https://github.com/folke/which-key.nvim

- **mini.starter** (home page)
  https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-starter.md

### Edition
- **Comment.nvim**
  https://github.com/numToStr/Comment.nvim

- **nvim-autopairs**
  https://github.com/windwp/nvim-autopairs

- **mini.surround**
  https://github.com/nvim-mini/mini.surround

- **treesj**
  https://github.com/Wansmer/treesj

### Navigation
- **flash.nvim**
  https://github.com/folke/flash.nvim
