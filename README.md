<div id="top"></div>

<div align="center">
    <img src="https://raw.githubusercontent.com/okivim/okivim/main/logo.png" width="320" alt="okivim">
</div>

<h4 align="center">
    <a href="#installation">Installation</a>
    <span>&nbsp;+&nbsp;</span>
    <a href="#language-servers-lsps">LSP's</a>
    <span>&nbsp;+&nbsp;</span>
    <a href="#plugin-manager">Plugins</a>
    <span>&nbsp;+&nbsp;</span>
    <a href="./docs/keymaps.md">Keymaps</a>
</h4>

<div align="center">

[![License](https://img.shields.io/github/license/okivim/okivim?style=for-the-badge&logo=libreofficeimpress&color=3B73E0&logoColor=D9E0EE&labelColor=302D41)](https://github.com/okivim/okivim/blob/main/LICENSE)&nbsp;
[![Stars](https://img.shields.io/github/stars/okivim/okivim?style=for-the-badge&logo=apachespark&color=3B73E0&logoColor=D9E0EE&labelColor=302D41)](https://github.com/okivim/okivim/stargazers)&nbsp;
[![Issues](https://img.shields.io/github/issues/okivim/okivim?style=for-the-badge&logo=bilibili&color=3B73E0&logoColor=D9E0EE&labelColor=302D41)](https://github.com/okivim/okivim/issues)&nbsp;
[![SIZE](https://img.shields.io/github/repo-size/okivim/okivim?style=for-the-badge&logo=pkgsrc&color=3B73E0&logoColor=D9E0EE&labelColor=302D41&label=size)](https://github.com/okivim/okivim)

</div>

**Okivim** is a minimal and efficient **Neovim configuration** focused on **simplicity, performance, and maintainability**. It provides a clean foundation with modern features like LSP, formatting, and diagnostics, while keeping the configuration transparent and easy to customize. Built to stay fast, predictable, and out of your way — giving you a setup that grows with your workflow.

![](https://raw.githubusercontent.com/okivim/okivim/refs/heads/main/screenshots/screenshot2.png)

## Features

- ⚡ Minimal, clean, and distraction-free setup
- 🎯 Thoughtful defaults that respect core Neovim behavior
- 🧩 Fully modular configuration, easy to customize
- 🧭 Clean navigation — no tabs, no file tree, no distractions
- 🛠 Carefully curated plugins, no unnecessary bloat

## Requirements

### Basics
- **[Neovim](https://neovim.io/)** >= 0.11.2
- **[Git](https://git-scm.com/)** >= 2.19.0
- a **[Nerd Font](https://www.nerdfonts.com/)** to display some icons (optional)

### Required for full functionality
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** and **[fd](https://github.com/sharkdp/fd)** used by `Telescope` *(more info on [dependencies](./docs/dependencies.md))*
- **[nvim-treesitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)** and **C compiler** for `nvim-treesitter` *(more info on [dependencies](./docs/dependencies.md))*
- and a **terminal that support true color and undercurl**:
  - [kitty](https://sw.kovidgoyal.net/kitty/) - (Linux / macOS)
  - [wezterm](https://wezterm.org/) - (Linux / macOS / Windows)
  - [alacritty](https://alacritty.org/) - (Linux / macOS / Windows)
  - [iterm2](https://iterm2.com/) - (macOS)
  - [ghostty](https://ghostty.org/) - (Linux / macOS / Windows)

## Installation

**[How to install](./docs/installation.md)** *([See dependencies](./docs/dependencies.md))*

---

## Language servers (LSP's)

<div>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/javascript.png" alt="JavaScript" title="JavaScript"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/typescript.png" alt="TypeScript" title="TypeScript"/></code>
    <code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/python.png" alt="Python" title="Python"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/php_(elephpant).png" alt="php (elephpant)" title="php (elephpant)"/></code>
    <code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/c.png" alt="C" title="C"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/c++.png" alt="C++" title="C++"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/rust.png" alt="Rust" title="Rust"/></code>
    <code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/lua.png" alt="Lua" title="Lua"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/bash.png" alt="bash" title="bash"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/docker.png" alt="Docker" title="Docker"/></code>
    <code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/vue_js.png" alt="Vue.js" title="Vue.js"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/astro.png" alt="Astro" title="Astro"/></code>
    <code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/css.png" alt="CSS" title="CSS"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/tailwind_css.png" alt="Tailwind CSS" title="Tailwind CSS"/></code>
</div>
&nbsp;

<details>
<summary>Show All</summary>

<!-- extras:start -->

- bashls
- cssls
- clangd
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
- astro
- yamlls

<!-- extras:end -->

</details>

## Debug adapters (DAP)

<div>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/javascript.png" alt="JavaScript" title="JavaScript"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/typescript.png" alt="TypeScript" title="TypeScript"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/python.png" alt="Python" title="Python"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/php_(elephpant).png" alt="php (elephpant)" title="php (elephpant)"/></code>
    <code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/c.png" alt="C" title="C"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/c++.png" alt="C++" title="C++"/></code>
	<code><img width="40" src="https://raw.githubusercontent.com/marwin1991/profile-technology-icons/refs/heads/main/icons/rust.png" alt="Rust" title="Rust"/></code>
</div>
&nbsp;

<details>
<summary>Show All</summary>

<!-- extras:start -->

debugpy (Python) - codelldb (Rust / C / C++) - js-debug-adapter (JS / TS) - php-debug-adapter (PHP)

<!-- extras:end -->

</details>

**And formatters =** prettierd - stylelint - taplo

<p></p>

> [!NOTE]  
> These LSPs, formatters, linters, and debug adapters are automatically installed and enabled. All of them are managed by Mason.

---

## Plugin manager

- [lazy.nvim](https://github.com/folke/lazy.nvim) - *Plugin manager*

## Installed Plugins

### Autocomplete
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) – *Completion engine*
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) – *Snippets engine*

### LSP and Tools
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) – *LSP setup*
- [mason.nvim](https://github.com/williamboman/mason.nvim) – *LSP / DAP / Linter / Formatter installer*
- [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) – *Mason helper*
- [fidget.nvim](https://github.com/j-hui/fidget.nvim) – *LSP progress UI*
- [conform.nvim](https://github.com/stevearc/conform.nvim) – *Code formatter*

### Debugging (DAP)
- [mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim) – *Mason integration for DAP*
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) – *Debugger UI*
- [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text) – *Inline debug values*
- [nvim-dap-vscode-js](https://github.com/mxsdev/nvim-dap-vscode-js) – *VS Code JS debugger adapter*
- [nvim-nio](https://github.com/nvim-neotest/nvim-nio) – *Async IO dependency*

### File Explorer
- [oil.nvim](https://github.com/stevearc/oil.nvim) – *File manager*

### Coloring and syntax
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) – *Syntax highlighting*
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) – *Color preview*

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
- [treesj](https://github.com/Wansmer/treesj) – *Split / join code*
- [yanky.nvim](https://github.com/gbprod/yanky.nvim) – *Yank history*
- [mynotes.nvim](https://github.com/okivim/mynotes.nvim) – *Your notes*
- [phantom.nvim](https://github.com/okivim/phantom.nvim) – *Session manager*

### Git
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) – *Git indicators*

### Themes
[catppuccin](https://github.com/catppuccin/nvim) - [gruvbox](https://github.com/ellisonleao/gruvbox.nvim) - [kanagawa](https://github.com/rebelot/kanagawa.nvim) - [tokyonight](https://github.com/folke/tokyonight.nvim) - [rose-pine](https://github.com/rose-pine/neovim) - [nightfox](https://github.com/EdenEast/nightfox.nvim)

> Easy to configure: add your themes in `plugins/colorscheme.lua` and switch the active one by changing the **colorscheme** option.

---

## Screenshots

| ![](https://raw.githubusercontent.com/okivim/okivim/refs/heads/main/screenshots/screenshot1.png) | ![](https://raw.githubusercontent.com/okivim/okivim/refs/heads/main/screenshots/screenshot2.png) | ![](https://raw.githubusercontent.com/okivim/okivim/refs/heads/main/screenshots/screenshot3.png) | ![](https://raw.githubusercontent.com/okivim/okivim/refs/heads/main/screenshots/screenshot4.png) |
|:---------------------:|:---------------------:|:---------------------:|:---------------------:|

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
      <a href="https://github.com/mxsdev/nvim-dap-vscode-js">
        <img src="https://avatars.githubusercontent.com/u/26291168?v=4" width="50" alt="mxsdev/nvim-dap-vscode-js"/>
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
      <a href="https://github.com/ellisonleao">
        <img src="https://avatars.githubusercontent.com/u/544372?v=4" width="50" alt="ellisonleao"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/rebelot">
        <img src="https://avatars.githubusercontent.com/u/3069142?v=4" width="50" alt="rebelot"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/rose-pine">
        <img src="https://avatars.githubusercontent.com/u/96490892?v=4" width="50" alt="rose-pine"/>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/EdenEast">
        <img src="https://avatars.githubusercontent.com/u/22276940?v=4" width="50" alt="EdenEast"/>
      </a>
    </td>
  </tr>
</table>

</div>
<br>

<div align="center">
© 2026 Alberto Mateo Alcalá. <a href="https://github.com/okivim/okivim/blob/main/LICENSE">MIT License</a>.
<a href="#top">🔝</a>
</div>

&nbsp;
&nbsp;

