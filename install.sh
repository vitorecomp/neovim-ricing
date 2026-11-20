#!/usr/bin/env bash
# Install this NvChad-based Neovim config on Arch/Manjaro (assumes nvim >= 0.11 is already installed).
# Usage: ./install.sh
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

info() { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m==>\033[0m %s\n' "$*"; }

command -v nvim >/dev/null || { echo "nvim not found; install it first (sudo pacman -S neovim)"; exit 1; }

# 1. System dependencies (ripgrep for telescope grep, gcc/make for treesitter, node/unzip for Mason, nerd font for icons)
info "Installing system packages"
pkgs=(git curl unzip gcc make ripgrep nodejs npm ttf-jetbrains-mono-nerd)
if [[ "${XDG_SESSION_TYPE:-}" == "wayland" ]]; then pkgs+=(wl-clipboard); else pkgs+=(xclip); fi
sudo pacman -S --needed --noconfirm "${pkgs[@]}"

# 2. Link the config to ~/.config/nvim
info "Linking $CONFIG_DIR -> $REPO_DIR"
if [[ -L "$CONFIG_DIR" && "$(readlink -f "$CONFIG_DIR")" == "$REPO_DIR" ]]; then
  echo "already linked"
else
  if [[ -e "$CONFIG_DIR" || -L "$CONFIG_DIR" ]]; then
    backup="$CONFIG_DIR.bak.$(date +%Y%m%d%H%M%S)"
    warn "Existing config moved to $backup"
    mv "$CONFIG_DIR" "$backup"
  fi
  mkdir -p "$(dirname "$CONFIG_DIR")"
  ln -s "$REPO_DIR" "$CONFIG_DIR"
fi

# 3. Plugins (lazy.nvim bootstraps itself), then NvChad's Mason tools
info "Installing plugins with lazy.nvim"
nvim --headless "+Lazy! sync" +qa
info "Installing LSP servers / formatters via Mason"
nvim --headless "+MasonInstallAll" +qa || warn "MasonInstallAll failed; run :MasonInstallAll inside nvim"

info "Done. Open nvim, pick a theme with <space>th, and run :checkhealth to verify."
