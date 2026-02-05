# Keymaps Documentation

This documentation contains all keymaps configured in the Neovim setup, organized by categories.

## Generic Keymaps

| Keymap | Mode | Description |
|--------|------|-------------|
| `<leader>,` | Normal | First buffer |
| `<leader>.` | Normal | Last buffer |
| `<Tab>` | Normal | Next buffer |
| `<S-Tab>` | Normal | Previous buffer |
| `<leader>bq` | Normal | Close other buffers |
| `<leader>alb` | Normal | Insert empty line below |
| `<leader>sl` | Normal | Select line *(no newline)* |
| `<leader>yl` | Normal | Copy line *(no newline)* |
| `<leader>x` | Normal | Close buffer |
| `<leader>a` | Normal | Select entire file |
| `<leader>y` | Visual | Copy selection |
| `<leader>yy` | Normal | Copy line |
| `<leader>d` | Normal/Visual | Delete (keep clipboard) |
| `<` | Visual | Indent left (keep selection) |
| `>` | Visual | Indent right (keep selection) |
| `<leader>dy` | Normal | Show diagnostics |
| `<leader>f` | Normal | Search forward |
| `<C-h>` | Normal | Go to the left window |
| `<C-j>` | Normal | Go to the down window |
| `<C-k>` | Normal | Go to the up window |
| `<C-l>` | Normal | Go to the right window |
| `<leader>w` | Normal | Split window |
| `<leader>wv` | Normal | Split window vertically |
| `<leader>wq` | Normal | Quit a window |
| `<leader>t` | Normal | Split terminal |
| `<leader>tv` | Normal | Split terminal vertically |

## Plugin Keymaps

### LSP

These keymaps are available in buffers with LSP enabled.

| Keymap | Mode | Description |
|--------|------|-------------|
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to declaration |
| `gi` | Normal | Go to implementation |
| `gr` | Normal | Find references |
| `K` | Normal | Hover documentation |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>ca` | Normal/Visual | Code actions |
| `[d` | Normal | Previous diagnostic |
| `]d` | Normal | Next diagnostic |
| `<leader>e` | Normal | Show diagnostic float |

### Telescope

| Keymap | Mode | Description |
|--------|------|-------------|
| `<leader><Space>` | Normal | Command palette |
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep (search text in project) |
| `<leader>fb` | Normal | Find buffers |
| `<leader>fh` | Normal | Help tags |
| `<leader>fr` | Normal | Recent Files |

### Oil

| Keymap | Mode | Description |
|--------|------|-------------|
| `-` | Normal | Oil: open parent directory |

### Fugitive

#### Global

| Keymap | Mode | Description |
|-------|------|-------------|
| `<leader>G` | Normal | Fugitive: Open Git status |
| `<leader>Gb` | Normal | Fugitive: Open Git blame |

#### Inside `:Git` buffer

| Keymap | Mode | Description |
|-------|------|-------------|
| `j / k` | Normal | Move between files |
| `-` | Normal | Stage / unstage file or hunk |
| `=` | Normal | Show diff of the file under cursor |
| `cc` | Normal | Commit staged changes |
| `ca` | Normal | Amend last commit |
| `ce` | Normal | Extend last commit |
| `dd` | Normal | Discard changes in file |
| `D` | Normal | Show full diff |
| `q` | Normal | Close Git status buffer |

#### Inside `:Git blame` buffer

| Keymap | Mode | Description |
|-------|------|-------------|
| `<CR>` | Normal | Open commit under cursor |
| `o` | Normal | Open commit in split |
| `p` | Normal | Preview commit |
| `q` | Normal | Close blame buffer |

> **Note**  
> Fugitive follows a *buffer-centric workflow*: most Git actions are performed inside the `:Git` buffer using local keybindings, rather than global mappings.

### Diffview

| Keymap | Mode | Description |
|--------|------|-------------|
| `<leader>do` | Normal | Diffview: open |
| `<leader>dH` | Normal | Diffview: file history |
| `<leader>dc` | Normal | Diffview: close |

### Gitsigns

| Keymap | Mode | Description |
|--------|------|-------------|
| `<leader>gp` | Normal | Gitsigns: Preview hunks in popup |
| `<leader>gs` | Normal | Gitsigns: Stage hunk |
| `<leader>gr` | Normal | Gitsigns: Reset hunk |
| `<leader>gb` | Normal | Gitsigns: Toggle current line blame |
| `<leader>gi` | Normal | Gitsigns: Show info about the commit |
| `<leader>gd` | Normal | Gitsigns: Diff against HEAD |
| `<leader>gn` | Normal | Gitsigns: Toggle number highlighting |
| `<leader>gl` | Normal | Gitsigns: Toggle line highlighting |

### Aerial

| Keymap | Mode | Description |
|--------|------|-------------|
| `<leader>o` | Normal | Toggle Aerial Outline |

---

#### Notes

- `<leader>` is configured as the space key (`<Space>`)
- LSP keymaps are only available in buffers where there is an active LSP server
- Some keymaps may require certain plugins to be loaded or configured
