# Neovim Setup

This configuration is built from scratch, focused on speed, clarity and
full control over plugins and features.

## System dependencies

These tools must be installed for the setup to work properly.

### 1. Node.js

Required for the TypeScript LSP.

Using **fnm** (Node version manager):\
https://github.com/Schniz/fnm

``` bash
fnm install --lts
```

------------------------------------------------------------------------

### 2. TypeScript

Required for TypeScript language server.

``` bash
npm install -g typescript typescript-language-server
```

------------------------------------------------------------------------

### 3. Ripgrep

Used by Telescope for project-wide text search.

``` bash
# Linux
sudo apt install ripgrep
# macOS
brew install ripgrep
# Windows
scoop install ripgrep
or
choco install ripgrep
```

------------------------------------------------------------------------

### 4. fd

Used by Telescope for fast file search.

``` bash
# Linux
sudo apt install fd-find
# macOS
brew install fd
# Windows
scoop install fd
or
choco install fd
```

(Optional symlink)

``` bash
ln -s $(which fdfind) ~/.local/bin/fd
```

------------------------------------------------------------------------

### 5. Clipboard support

Neovim requires an external tool to integrate with the system clipboard.

#### Linux:

First, check which display server you are using:

```bash
echo $XDG_SESSION_TYPE
```

- If it returns `wayland` - you are using Wayland
- If it returns `x11` - you are using X11

Wayland (wl-clipboard)

```bash
sudo apt install wl-clipboard
```

X11 (xclip)

```bash
sudo apt install xclip
```

------------------------------------------------------------------------

### 6. Prettier

Required for projects that use it.

``` bash
npm install -g prettier
```

------------------------------------------------------------------------

## Plugin manager

-   **lazy.nvim**

Used to manage all plugins and allow easy setup on new machines.

------------------------------------------------------------------------

## Installed plugins

-   lazy.nvim
-   telescope.nvim
-   plenary.nvim
-   catppuccin (colorscheme)
-   mason.nvim
-   mason-lspconfig.nvim
-   nvim-lspconfig

------------------------------------------------------------------------

## Language servers (managed by Mason)

These LSPs are automatically installed and enabled:

-   lua_ls
-   pyright
-   ts_ls (TypeScript)
-   bashls
-   jsonls
-   yamlls

------------------------------------------------------------------------

## Install everything on a new machine

After cloning the config:

``` vim
:Lazy sync
```

------------------------------------------------------------------------

This README will be extended as more tools and plugins are added.
