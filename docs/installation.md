# Installation

## Manual installation

**Linux / MacOS**

Make a backup of your current Neovim files:
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone the starter
```
git clone https://github.com/okivim/okivim ~/.config/nvim
```

Remove the .git folder, so you can add it to your own repo later
```
rm -rf ~/.config/nvim/.git
```

Start Neovim!
```
nvim
```

---

**Windows** (with PowerShell)

Make a backup of your current Neovim files:
```bash
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

Clone the starter
```
git clone https://github.com/okivim/okivim $env:LOCALAPPDATA\nvim
```

Remove the .git folder, so you can add it to your own repo later
```
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

Start Neovim!
```
nvim
```

## Okivim installer

**Linux / MacOS / Windows**

You can now easily install Okivim using our installer.

<div>

<img src="https://raw.githubusercontent.com/okivim/okivim-installer/refs/heads/main/screenshot.png" alt="Installer screenshot" width="500" />

</div>
<br>

The installer checks are informational and help you identify which dependencies are missing.
Instructions on how to install these dependencies can be found in Getting Started → Dependencies.

> [!TIP]
> It is recommended to run `:LazyHealth` after installation. This will load all plugins and check if everything is working correctly.

