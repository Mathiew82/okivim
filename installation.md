## Installation

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
git clone https://github.com/Mathiew82/ikivim ~/.config/nvim
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
git clone https://github.com/Mathiew82/ikivim $env:LOCALAPPDATA\nvim
```

Remove the .git folder, so you can add it to your own repo later
```
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

Start Neovim!
```
nvim
```

