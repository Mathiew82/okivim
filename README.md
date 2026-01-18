# Neovim Setup

This configuration is built from scratch, focused on speed, clarity and
full control over plugins and features.

## Dependencies

These tools must be installed for the setup to work properly.

### 1. Node.js

Required for the TypeScript LSP.

Using **fnm** (Node version manager)
https://github.com/Schniz/fnm

``` bash
fnm install --lts
```

---

### 2. Prettier

Required for projects that use it.

``` bash
npm install -g prettier
```

---

### 3. TypeScript

Required for TypeScript language server.

``` bash
npm install -g typescript typescript-language-server
```

---

### 5. Ripgrep (Telescope dependency)

Used by Telescope for project-wide text search.

**Linux**
``` bash
sudo apt install ripgrep
```
**macOS**
``` bash
brew install ripgrep
```
**Windows**
``` bash
scoop install ripgrep
or
choco install ripgrep
```

---

### 6. fd (Telescope dependency)

Used by Telescope for fast file search.

**Linux**
``` bash
sudo apt install fd-find
```
**macOS**
``` bash
brew install fd
```
**Windows**
``` bash
scoop install fd
or
choco install fd
```

---

*If you want create a symlink (Optional)*

``` bash
ln -s $(which fdfind) ~/.local/bin/fd
```

---

### 7. nvim-treesitter (dependencies)

**1- Required nvim-treesitter-cli:**

With npm
``` bash
npm install -g tree-sitter-cli
```
With cargo
``` bash
cargo install --locked tree-sitter-cli
```

*And after check it*
``` bash
tree-sitter --version
```

---

### 8. Clipboard support

Neovim requires an external tool to integrate with the system clipboard.

#### Linux:

First, check which display server you are using:

```bash
echo $XDG_SESSION_TYPE
```

- If it returns `wayland` - you are using Wayland
- If it returns `x11` - you are using X11

**For Wayland (wl-clipboard)**
```bash
sudo apt install wl-clipboard
```

**Fow X11 (xclip)**
```bash
sudo apt install xclip
```

---

**2- Required a C compiler:**

Check if CC is installed
``` bash
cc --version
```

---

**Install on Linux**

Ubuntu / Debian
``` bash
sudo apt install build-essential
```
Arch
``` bash
sudo pacman -S base-devel
```
Fedora
``` bash
sudo dnf groupinstall "Development Tools"
```

macOS
``` bash
xcode-select --install
```

---

**Install on Windows**

By download link (✔ Select Desktop development with C++)
``` bash
https://visualstudio.microsoft.com/es/downloads/
```
Git Bash / MSYS2 / WSL
``` bash
sudo dnf groupinstall "Development Tools"
```

---

Final check if tree-sitter-cli and C compiler is installed
``` bash
cc --version
```
``` bash
tree-sitter --version
```

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

## Install everything on a new machine

After cloning the config:
``` vim
:Lazy sync
```

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

### Navigation
- **flash.nvim**
  https://github.com/folke/flash.nvim
