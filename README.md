<div align="center">
    <img src="https://raw.githubusercontent.com/Mathiew82/ikivim/main/logo.png" width="500" alt="ikivim">
</div>
&nbsp;

> [!WARNING]  
> In progress...
> You can use this configuration; it's stable. However, the following still needs to be added.

### Pending
- ⬜ Sessions Manager
- ⬜ DAP Adapter
- ⬜ DAP UI
- ⬜ DAP Languages

---

# ikivim setup

This configuration is built from scratch, focused on speed, clarity and
full control over plugins and features.

## Requirements

- Neovim >= 0.11.2
- Git >= 2.19.0
- a Nerd Font to display some icons (optional)

---

## Installation

**[How to install](./installation.md)** [ [See dependencies](./dependencies.md) ]

---

## Language servers (managed by Mason)

These LSPs are automatically installed and enabled:

- bashls
- cssls
- docker_compose_language_service
- eslint
- jsonls
- lua_ls
- phpactor
- pyright
- rust_analyzer
- tailwindcss
- taplo
- vtsls
- vue_ls
- yamlls

---

## Plugin manager

- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager

---

## Installed Plugins

### Theme
- [catppuccin.nvim](https://github.com/catppuccin/nvim) – Color scheme

### Autocomplete
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) – Completion engine
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) – Snippets engine

### LSP and Tools
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) – LSP setup
- [mason.nvim](https://github.com/williamboman/mason.nvim) – LSP/DAP installer
- [fidget.nvim](https://github.com/j-hui/fidget.nvim) – LSP progress UI
- [conform.nvim](https://github.com/stevearc/conform.nvim) – Code formatter

### Coloring and syntax
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) – Syntax highlighting
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) – Color preview

### File Explorer
- [oil.nvim](https://github.com/stevearc/oil.nvim) – File manager

### Search and navigation
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) – Fuzzy finder
- [aerial.nvim](https://github.com/stevearc/aerial.nvim) – Code outline
- [flash.nvim](https://github.com/folke/flash.nvim) – Motion jumps

### Interface
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) – Status line
- [which-key.nvim](https://github.com/folke/which-key.nvim) – Keymap helper
- [mini.starter](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-starter.md) – Start screen

### Edition
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) – Comment toggle
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) – Auto close pairs
- [mini.surround](https://github.com/nvim-mini/mini.surround) – Surround editing
- [treesj](https://github.com/Wansmer/treesj) – Split/join code
- [yanky.nvim](https://github.com/gbprod/yanky.nvim) – Yank history
- [mynotes.nvim](https://github.com/Mathiew82/mynotes.nvim) – Your notes

### Git
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) – Git indicators

---

## Screenshots

| ![](https://raw.githubusercontent.com/Mathiew82/ikivim/refs/heads/main/screenshot1.png) | ![](https://raw.githubusercontent.com/Mathiew82/ikivim/refs/heads/main/screenshot2.png) | ![](https://raw.githubusercontent.com/Mathiew82/ikivim/refs/heads/main/screenshot3.png) | ![](https://raw.githubusercontent.com/Mathiew82/ikivim/refs/heads/main/screenshot4.png) | ![](https://raw.githubusercontent.com/Mathiew82/ikivim/refs/heads/main/screenshot5.png) |
|:---------------------:|:---------------------:|:---------------------:|:---------------------:|:---------------------:|

---

&nbsp;

<div align="center">

### ❤️ Plugin Authors

Huge thanks to these amazing developers for their awesome work:

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/neovim">
        <img src="https://avatars.githubusercontent.com/u/6471485?v=4" width="80"/>
        <br/>neovim
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/catppuccin">
        <img src="https://avatars.githubusercontent.com/u/10716688?v=4" width="80"/>
        <br/>catppuccin
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/hrsh7th">
        <img src="https://avatars.githubusercontent.com/u/6624273?v=4" width="80"/>
        <br/>hrsh7th
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/L3MON4D3">
        <img src="https://avatars.githubusercontent.com/u/3372537?v=4" width="80"/>
        <br/>L3MON4D3
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/williamboman">
        <img src="https://avatars.githubusercontent.com/u/103369?v=4" width="80"/>
        <br/>williamboman
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/j-hui">
        <img src="https://avatars.githubusercontent.com/u/107528?v=4" width="80"/>
        <br/>j-hui
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/stevearc">
        <img src="https://avatars.githubusercontent.com/u/226654?v=4" width="80"/>
        <br/>stevearc
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/nvim-treesitter">
        <img src="https://avatars.githubusercontent.com/u/67470847?v=4" width="80"/>
        <br/>nvim-treesitter
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/norcalli">
        <img src="https://avatars.githubusercontent.com/u/694741?v=4" width="80"/>
        <br/>norcalli
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/nvim-telescope">
        <img src="https://avatars.githubusercontent.com/u/67470847?v=4" width="80"/>
        <br/>telescope
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/folke">
        <img src="https://avatars.githubusercontent.com/u/292349?v=4" width="80"/>
        <br/>folke
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/nvim-lualine">
        <img src="https://avatars.githubusercontent.com/u/5433930?v=4" width="80"/>
        <br/>lualine
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/nvim-mini">
        <img src="https://avatars.githubusercontent.com/u/105671557?v=4" width="80"/>
        <br/>nvim-mini
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/numToStr">
        <img src="https://avatars.githubusercontent.com/u/44928135?v=4" width="80"/>
        <br/>numToStr
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/windwp">
        <img src="https://avatars.githubusercontent.com/u/13325328?v=4" width="80"/>
        <br/>windwp
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/Wansmer">
        <img src="https://avatars.githubusercontent.com/u/2406688?v=4" width="80"/>
        <br/>Wansmer
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/gbprod">
        <img src="https://avatars.githubusercontent.com/u/26420719?v=4" width="80"/>
        <br/>gbprod
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/lewis6991">
        <img src="https://avatars.githubusercontent.com/u/143592?v=4" width="80"/>
        <br/>lewis6991
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/Mathiew82">
        <img src="https://avatars.githubusercontent.com/u/22583657?v=4" width="80"/>
        <br/>Mathiew82
      </a>
    </td>
  </tr>
</table>

</div>

&nbsp;
&nbsp;

