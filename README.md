<h1 align="center">
  <br>
  <img src="/images/neovim.png" alt="Neovim" width="150">
  <br>
  Neovim Config
  <br>
</h1>

<h4 align="center">Neovim configuration by <a href="https://github.com/Thanglm2006">Thanglm2006</a></h4>

<p align="center">
  • <a href="#installation"> Installation </a> •
  <a href="#post-installation"> Post Installation </a> •
  <a href="#faq"> FAQ </a> •
</p>

---

## 📦 Installation

### ✅ Prerequisites

Make sure your Neovim version is **≥ 0.8.0**.

#### Required Packages

- Basic tools: `git`, `make`, `unzip`, `gcc`
- `ripgrep` (for search)
- Clipboard tools: `xclip`, `xsel`, or `win32yank`
- `tree-sitter-cli` (e.g., for LaTeX support):  
  ```bash
  sudo pacman -S tree-sitter-cli
  ```
- Nerd Fonts (required for icons)

#### Fedora Note
To use plugins that depend on LuaRocks (like image.lua), you may need:

```bash
sudo dnf install lua-5.1
```

### 🛑 Backup Old Config
Back up and delete your existing Neovim config:

```bash
mv ~/.config/nvim ~/.config/nvim_backup
rm -rf ~/.local/share/nvim/
```

### 🔧 Clone This Repo

#### Linux / macOS
```bash
git clone https://github.com/Thanglm2006/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

#### Windows (CMD)
```cmd
git clone https://github.com/Thanglm2006/neovim-config.git %LOCALAPPDATA%\nvim
```

#### Windows (PowerShell)
```powershell
git clone https://github.com/Thanglm2006/neovim-config.git "$env:LOCALAPPDATA\nvim"
```

### 📚 Install Extra Dependencies

#### Arch Linux
```bash
sudo pacman -S nerd-fonts nodejs npm unzip zip sxiv imagemagick
sudo npm install -g tree-sitter-cli

```

#### Fedora
```bash
sudo dnf install nodejs npm unzip zip sxiv ImageMagick
sudo npm install -g tree-sitter-cli

```

## 🚀 Post Installation

1. Launch Neovim:
   ```bash
   nvim
   ```

2. It will automatically install all plugins via lazy.nvim.

3. Use `:Lazy` to view plugin status. Press `q` to close the window.

## ❓ FAQ

### I already have a Neovim config. What should I do?
Back it up and remove:

```bash
mv ~/.config/nvim ~/.config/nvim_backup
rm -rf ~/.local/share/nvim/
```

### Can I keep multiple configs?
Yes! Use `NVIM_APPNAME`:

```bash
alias nvim-thang='NVIM_APPNAME=nvim-thang nvim'
```

Place the config in `~/.config/nvim-thang`

Neovim will use:
- `~/.config/nvim-thang`
- `~/.local/share/nvim-thang`

### How do I uninstall this config?
Just delete the following:

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

Or follow official Lazy.nvim uninstall guide.

## 📄 License

MIT © Thanglm2006

---

*Let me know if you'd like to include demo screenshots, gifs, or explain specific plugin features (e.g. `telescope`, `cmp`, `treesitter`, etc.)!*
