<div align="center">
    <img src="https://raw.githubusercontent.com/Mathiew82/okivim/main/logo.png" width="400" alt="okivim">
</div>

<h4 align="center">
    <a href="#installation">Installation</a>
    <span>&nbsp;+&nbsp;</span>
    <a href="#language-servers">LSP's</a>
    <span>&nbsp;+&nbsp;</span>
    <a href="#plugin-manager">Plugins</a>
    <span>&nbsp;+&nbsp;</span>
    <a href="./docs/keymaps.md">Keymaps</a>
</h4>

&nbsp;

# okivim

A minimal and efficient Neovim configuration focused on simplicity, performance, and maintainability.

It provides a clean foundation with modern features like LSP, formatting, and diagnostics, while keeping the configuration transparent and easy to customize.

IkiVim is built to stay fast, predictable, and out of your way — giving you a setup that grows with your workflow, not against it.

![](https://raw.githubusercontent.com/Mathiew82/okivim/refs/heads/main/screenshot1.png)

![](https://raw.githubusercontent.com/Mathiew82/okivim/refs/heads/main/screenshot2.png)

## Features

- ⚡ Minimal, clean, and distraction-free setup
- 🎯 Thoughtful defaults that respect core Neovim behavior
- 🧩 Fully modular configuration, easy to customize
- 🧭 Clean navigation — no tabs, no file tree, no distractions
- 🛠 Carefully curated plugins, no unnecessary bloat

## Requirements

- Neovim >= 0.11.2
- Git >= 2.19.0
- a Nerd Font to display some icons (optional)

---

## Installation

**[How to install](./docs/installation.md)** [ [See dependencies](./docs/dependencies.md) ]

---

## Language servers

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

## Formatters

- prettierd
- taplo

## Debug adapters (DAP)

- debugpy - *Python*
- codelldb - *Rust/C/C++*
- js-debug-adapter - *JS/TS*
- php-debug-adapter - *PHP*

&nbsp;

> [!NOTE]  
> LSPs, formatters, linters, and debug adapters from these lists are automatically installed and enabled. All of them are managed by Mason.

---

## Plugin manager

- [lazy.nvim](https://github.com/folke/lazy.nvim) - *Plugin manager*

---

## Installed Plugins

### Theme
- [catppuccin.nvim](https://github.com/catppuccin/nvim) – *Color scheme*

### Autocomplete
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) – *Completion engine*
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) – *Snippets engine*

### LSP and Tools
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) – *LSP setup*
- [mason.nvim](https://github.com/williamboman/mason.nvim) – *LSP/DAP/Linter/Formatter installer*
- [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) – *Mason helper*
- [fidget.nvim](https://github.com/j-hui/fidget.nvim) – *LSP progress UI*
- [conform.nvim](https://github.com/stevearc/conform.nvim) – *Code formatter*

### Debugging (DAP)
- [mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim) – *Mason integration for DAP*
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) – *Debugger UI*
- [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text) – *Inline debug values*
- [nvim-dap-vscode-js](https://github.com/mxsdev/nvim-dap-vscode-js) – *VS Code JS debugger adapter*
- [nvim-nio](https://github.com/nvim-neotest/nvim-nio) – *Async IO dependency*

### Coloring and syntax
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) – *Syntax highlighting*
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) – *Color preview*

### File Explorer
- [oil.nvim](https://github.com/stevearc/oil.nvim) – *File manager*

### Search and navigation
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) – *Fuzzy finder*
- [aerial.nvim](https://github.com/stevearc/aerial.nvim) – *Code outline*
- [flash.nvim](https://github.com/folke/flash.nvim) – *Motion jumps*

### Interface
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) – *Status line*
- [which-key.nvim](https://github.com/folke/which-key.nvim) – *Keymap helper*
- [mini.starter](https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-starter.md) – *Start screen*

### Edition
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) – *Comment toggle*
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) – *Auto close pairs*
- [mini.surround](https://github.com/nvim-mini/mini.surround) – *Surround editing*
- [treesj](https://github.com/Wansmer/treesj) – *Split/join code*
- [yanky.nvim](https://github.com/gbprod/yanky.nvim) – *Yank history*
- [mynotes.nvim](https://github.com/Mathiew82/mynotes.nvim) – *Your notes*
- [phantom.nvim](https://github.com/Mathiew82/phantom.nvim) – *Session manager*

### Git
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) – *Git indicators*

---

## Screenshots

| ![](https://raw.githubusercontent.com/Mathiew82/okivim/refs/heads/main/screenshot1.png) | ![](https://raw.githubusercontent.com/Mathiew82/okivim/refs/heads/main/screenshot2.png) | ![](https://raw.githubusercontent.com/Mathiew82/okivim/refs/heads/main/screenshot3.png) | ![](https://raw.githubusercontent.com/Mathiew82/okivim/refs/heads/main/screenshot4.png) |
|:---------------------:|:---------------------:|:---------------------:|:---------------------:|

---

### TODO list
- [x] Sessions Manager (phantom.nvim)
- [x] DAP Adapter
- [x] DAP UI
- [x] DAP Languages
- [x] Improve autocomplete and LSP info popups
- [ ] Create the keymaps documentation page

---

&nbsp;

<div align="center">

### ❤️ Plugin Authors

Huge thanks to these amazing developers for their awesome work:

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/neovim">
        <img src="https://avatars.githubusercontent.com/u/6471485?v=4" width="50" alt="neovim"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/catppuccin">
        <img src="https://avatars.githubusercontent.com/u/10716688?v=4" width="50" alt="catppuccin"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/hrsh7th">
        <img src="https://avatars.githubusercontent.com/u/6624273?v=4" width="50" alt="hrsh7th"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/L3MON4D3">
        <img src="https://avatars.githubusercontent.com/u/3372537?v=4" width="50" alt="L3MON4D3"/>
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/williamboman">
        <img src="https://avatars.githubusercontent.com/u/103369?v=4" width="50" alt="williamboman"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/j-hui">
        <img src="https://avatars.githubusercontent.com/u/107528?v=4" width="50" alt="j-hui"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/stevearc">
        <img src="https://avatars.githubusercontent.com/u/226654?v=4" width="50" alt="stevearc"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/nvim-treesitter">
        <img src="https://avatars.githubusercontent.com/u/67470847?v=4" width="50" alt="nvim-treesitter"/>
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/norcalli">
        <img src="https://avatars.githubusercontent.com/u/694741?v=4" width="50" alt="norcalli"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/nvim-telescope">
        <img src="https://avatars.githubusercontent.com/u/67470847?v=4" width="50" alt="telescope"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/folke">
        <img src="https://avatars.githubusercontent.com/u/292349?v=4" width="50" alt="folke"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/nvim-lualine">
        <img src="https://avatars.githubusercontent.com/u/5433930?v=4" width="50" alt="lualine"/>
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/nvim-mini">
        <img src="https://avatars.githubusercontent.com/u/105671557?v=4" width="50" alt="nvim-mini"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/numToStr">
        <img src="https://avatars.githubusercontent.com/u/44928135?v=4" width="50" alt="numToStr"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/windwp">
        <img src="https://avatars.githubusercontent.com/u/13325328?v=4" width="50" alt="windwp"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/Wansmer">
        <img src="https://avatars.githubusercontent.com/u/2406688?v=4" width="50" alt="Wansmer"/>
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/gbprod">
        <img src="https://avatars.githubusercontent.com/u/26420719?v=4" width="50" alt="gbprod"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/lewis6991">
        <img src="https://avatars.githubusercontent.com/u/143592?v=4" width="50" alt="lewis6991"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/Mathiew82">
        <img src="https://avatars.githubusercontent.com/u/22583657?v=4" width="50" alt="Mathiew82"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/WhoIsSethDaniel">
        <img src="https://avatars.githubusercontent.com/u/4702260?v=4" width="50" alt="WhoIsSethDaniel"/>
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/rcarriga/nvim-dap-ui">
        <img src="https://avatars.githubusercontent.com/u/1611543?v=4" width="50" alt="rcarriga/nvim-dap-ui"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/theHamsta/nvim-dap-virtual-text">
        <img src="https://avatars.githubusercontent.com/u/1641923?v=4" width="50" alt="theHamsta/nvim-dap-virtual-text"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/williamboman/mason.nvim">
        <img src="https://avatars.githubusercontent.com/u/103369?v=4" width="50" alt="williamboman/mason.nvim"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/jay-babu/mason-nvim-dap.nvim">
        <img src="https://avatars.githubusercontent.com/u/2443058?v=4" width="50" alt="jay-babu/mason-nvim-dap.nvim"/>
      </a>
    </td>
  </tr>

  <tr>
    <td align="center">
      <a href="https://github.com/mxsdev/nvim-dap-vscode-js">
        <img src="https://avatars.githubusercontent.com/u/26291168?v=4" width="50" alt="mxsdev/nvim-dap-vscode-js"/>
      </a>
    </td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>

</div>

&nbsp;
&nbsp;

