# Fast commands

`<leader>` is **Space**. Press `<space>` and wait to see the which-key popup, or `<space>ch` to open the NvChad cheatsheet.

## Dashboard (start screen)

Shown when nvim opens without a file. `:Nvdash` opens it again.

| Key | Action |
|---|---|
| `ff` | Find file |
| `fo` | Recent files |
| `fw` | Find word |
| `ac` | Open Claude Code |
| `th` | Themes |
| `ch` | Mappings cheatsheet |

## General

| Key / command | Mode | Action |
|---|---|---|
| `;` | n | Enter command mode (same as `:`) |
| `jk` | i | Exit insert mode |
| `<C-s>` | n | Save file |
| `<C-c>` | n | Copy whole file |
| `<Esc>` | n | Clear search highlight |
| `<C-h/j/k/l>` | n | Move between windows |
| `<C-h/j/k/l>` | i | Move cursor left/down/up/right |
| `<C-b>` / `<C-e>` | i | Go to beginning / end of line |
| `<space>n` | n | Toggle line numbers |
| `<space>rn` | n | Toggle relative numbers |
| `<space>/` | n, v | Toggle comment |
| `<space>fm` | n, v | Format file (conform.nvim) |

## Buffers (NvChad tabufline)

| Key | Action |
|---|---|
| `<Tab>` / `<S-Tab>` | Next / previous buffer |
| `<space>b` | New buffer |
| `<space>x` | Close buffer |

## File explorer (nvim-tree)

| Key | Action |
|---|---|
| `<C-n>` | Toggle file tree |
| `<space>e` | Focus file tree |
| `a` / `d` / `r` (in tree) | Create / delete / rename file |
| `g?` (in tree) | Show all tree keymaps |

## Search (telescope)

| Key | Action |
|---|---|
| `<space>ff` | Find files |
| `<space>fa` | Find all files (including hidden/ignored) |
| `<space>fw` | Live grep (search text in project) |
| `<space>fb` | Find buffers |
| `<space>fo` | Recent files |
| `<space>fz` | Fuzzy find in current buffer |
| `<space>fh` | Search help pages |
| `<space>ma` | Marks |
| `<space>cm` | Git commits |
| `<space>gt` | Git status |
| `<space>pt` | Pick hidden terminal |

## LSP (nvim-lspconfig)

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `<space>D` | Go to type definition |
| `<space>ra` | Rename symbol |
| `<space>ds` | Diagnostics list |
| `<space>wa` / `<space>wr` / `<space>wl` | Add / remove / list workspace folders |
| `K` | Hover documentation (Neovim default) |
| `grr` / `gra` | References / code action (Neovim default) |

## Terminal (NvChad)

| Key | Mode | Action |
|---|---|---|
| `<space>h` | n | New horizontal terminal |
| `<space>v` | n | New vertical terminal |
| `<A-h>` | n, t | Toggle horizontal terminal |
| `<A-v>` | n, t | Toggle vertical terminal |
| `<A-i>` | n, t | Toggle floating terminal |
| `<C-x>` | t | Exit terminal mode |

## AI: Claude Code (claudecode.nvim)

| Key / command | Mode | Action |
|---|---|---|
| `<space>ac` / `:ClaudeCode` | n | Toggle Claude terminal |
| `<space>af` / `:ClaudeCodeFocus` | n | Focus Claude |
| `<space>ar` | n | Resume a previous session (`--resume`) |
| `<space>aC` | n | Continue the last session (`--continue`) |
| `<space>am` / `:ClaudeCodeSelectModel` | n | Select model |
| `<space>ab` | n | Add current buffer to context |
| `<space>as` | v | Send selection to Claude |
| `<space>as` | n (nvim-tree) | Add file under cursor to context |
| `<space>aa` / `:ClaudeCodeDiffAccept` | n | Accept proposed diff |
| `<space>ad` / `:ClaudeCodeDiffDeny` | n | Reject proposed diff |
| `:ClaudeCodeStatus` | | Show connection status |

## Themes and UI (base46 / NvChad ui)

| Key / command | Action |
|---|---|
| `<space>th` | Pick a theme |
| `<space>ch` / `:NvCheatsheet` | Cheatsheet of all mappings |
| `<space>wK` | Show all which-key mappings |
| `<space>wk` | which-key lookup for a key |

## Plugin and tool management

| Command | Action |
|---|---|
| `:Lazy` | Plugin manager UI |
| `:Lazy sync` | Install / update / clean plugins |
| `:Mason` | LSP / formatter installer UI |
| `:MasonInstallAll` | Install all configured Mason tools |
| `:checkhealth` | Diagnose the setup |
