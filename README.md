# neovim-ricing

My personal Neovim setup.

It is built on [NvChad](https://github.com/NvChad/NvChad) (through the official [starter config](https://github.com/NvChad/starter)) and will be customized to be fast for:

- **Embedded systems development**
- **AI-assisted coding** (Claude Code integrated into the editor)
- **Rust applications**

## Install

Requirements: Arch/Manjaro and Neovim >= 0.11 already installed.

```bash
git clone git@github.com:vitorecomp/neovim-ricing.git
cd neovim-ricing
./install.sh
```

The script installs the system dependencies (ripgrep, gcc, node, a Nerd Font, clipboard tool), links `~/.config/nvim` to this repo, installs every plugin, and installs the LSP servers through Mason.

After that, set your terminal font to **JetBrainsMono Nerd Font** and open `nvim`.

## AI: Claude Code

[claudecode.nvim](https://github.com/coder/claudecode.nvim) connects Neovim to the [Claude Code](https://claude.com/claude-code) CLI. The `claude` binary must be installed and on your `PATH`.

| Key | Action |
|---|---|
| `<space>ac` | Toggle the Claude terminal |
| `<space>af` | Focus Claude |
| `<space>ar` / `<space>aC` | Resume / continue a previous session |
| `<space>am` | Select a model |
| `<space>ab` | Add the current buffer to Claude's context |
| `<space>as` | Send the visual selection (or the file under the cursor in nvim-tree) |
| `<space>aa` / `<space>ad` | Accept / reject a diff proposed by Claude |

## Documentation

- [Installed plugins](documentation/plugins.md)
- [Fast commands](documentation/fast-commands.md): keymaps and commands for every plugin

## Updating NvChad

```bash
git fetch upstream && git merge upstream/main   # starter config
```

Inside Neovim, `:Lazy sync` updates the plugins (including NvChad itself).
