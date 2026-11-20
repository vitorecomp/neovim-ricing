# CLAUDE.md

Personal Neovim config based on the NvChad starter (lazy.nvim). It is being customized for embedded systems development, AI-assisted coding, and Rust.

## Layout

- `init.lua`: bootstraps lazy.nvim and loads NvChad
- `lua/plugins/`: custom plugin specs (each file is auto-imported by lazy.nvim)
- `lua/configs/`: plugin configuration (lspconfig, conform, lazy)
- `lua/chadrc.lua`: NvChad theme/UI options
- `lua/vx86/dashboard.lua`: custom VX86 gradient logo and start screen buttons
- `lua/mappings.lua`, `lua/options.lua`, `lua/autocmds.lua`: user overrides
- `install.sh`: setup script for Arch/Manjaro
- `docs/`: plugin list, keymap reference, and README screenshots (`docs/images/`)

## Rule: keep the documentation in sync

Whenever a plugin is installed, removed, or changed, **always** update in the same change:

1. `docs/plugins.md`: add/remove the plugin (name, link, purpose, spec file) and any new Mason tools.
2. `docs/fast-commands.md`: add/remove its keymaps and commands.
3. `README.md`: if the plugin is a major feature (like the AI section), document it there too.
4. `install.sh`: if the plugin needs a system dependency, add it to the package list.
5. Commit `lazy-lock.json` together with the plugin spec.

## Conventions

- Add each new plugin in its own file under `lua/plugins/<name>.lua`.
- Do not edit NvChad's own files in `~/.local/share/nvim/lazy/NvChad`; override from this repo instead.
- Verify startup after changes: `nvim --headless "+Lazy! sync" +qa`, then open nvim and check for errors.
