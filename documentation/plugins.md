# Installed plugins

Exact versions are pinned in [`lazy-lock.json`](../lazy-lock.json).

Plugins under "NvChad core" come from NvChad itself (`nvchad.plugins`). Plugins under "Custom" are added by this repo in [`lua/plugins/`](../lua/plugins/).

## Custom

| Plugin | Purpose | Spec file |
|---|---|---|
| [coder/claudecode.nvim](https://github.com/coder/claudecode.nvim) | Claude Code AI integration (terminal, context sharing, diff review) | `lua/plugins/claudecode.lua` |
| [folke/snacks.nvim](https://github.com/folke/snacks.nvim) | Dependency of claudecode.nvim (terminal window) | `lua/plugins/claudecode.lua` |
| [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim) | Code formatting (`lua/configs/conform.lua`) | `lua/plugins/init.lua` |
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP server configuration (`lua/configs/lspconfig.lua`) | `lua/plugins/init.lua` |

## NvChad core

| Plugin | Purpose |
|---|---|
| [NvChad/NvChad](https://github.com/NvChad/NvChad) | The NvChad framework (default plugins, mappings, options) |
| [NvChad/ui](https://github.com/NvChad/ui) | Statusline, tabufline, dashboard, cheatsheet, terminal |
| [NvChad/base46](https://github.com/NvChad/base46) | Theme engine (`<space>th` to pick a theme) |
| [nvzone/volt](https://github.com/nvzone/volt) | UI library used by NvChad components |
| [nvzone/menu](https://github.com/nvzone/menu) | Right-click / keyboard context menu |
| [nvzone/minty](https://github.com/nvzone/minty) | Color picker and shades tool |
| [folke/lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [folke/which-key.nvim](https://github.com/folke/which-key.nvim) | Popup showing available keymaps |
| [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua utility library used by other plugins |
| [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder (files, grep, buffers, git) |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and parsing |
| [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indentation guides |
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git change signs in the gutter |
| [mason-org/mason.nvim](https://github.com/mason-org/mason.nvim) | Installer for LSP servers, formatters, linters |
| [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine |
| [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | Completion source: LSP |
| [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | Completion source: words in buffers |
| [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua) | Completion source: Neovim Lua API |
| [FelipeLema/cmp-async-path](https://codeberg.org/FelipeLema/cmp-async-path) | Completion source: file paths |
| [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | Completion source: snippets |
| [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet collection for many languages |
| [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto-close brackets and quotes |

## LSP servers (Mason)

Install or update them with `:MasonInstallAll` (NvChad) or `:Mason`.

| Server | Language | Enabled in |
|---|---|---|
| lua-language-server (`lua_ls`) | Lua | NvChad defaults |
| `html` | HTML | `lua/configs/lspconfig.lua` (starter example; binary not installed) |
| `cssls` | CSS | `lua/configs/lspconfig.lua` (starter example; binary not installed) |
