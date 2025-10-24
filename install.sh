#!/usr/bin/env bash
# -------------------------------------------------------------
# Neovim config installer (win,unix)
# Author: ariewhite
# -------------------------------------------------------------

set -e

REPO_URL="https://github.com/ariewhite/nvim-config.git"

# Detect platform and set config path
detect_os() {
  case "$OSTYPE" in
    linux*|darwin*)
      NVIM_CONFIG_DIR="$HOME/.config/nvim"
      ;;
    msys*|cygwin*|win32*)
      # Windows (Git Bash or WSL)
      if [ -n "$LOCALAPPDATA" ]; then
        NVIM_CONFIG_DIR="$LOCALAPPDATA/nvim"
      else
        NVIM_CONFIG_DIR="$HOME/AppData/Local/nvim"
      fi
      ;;
    *)
      echo "Unsupported OS: $OSTYPE"
      exit 1
      ;;
  esac
}

# Backup existing config if exists
backup_existing() {
  if [ -d "$NVIM_CONFIG_DIR" ]; then
    BACKUP_DIR="${NVIM_CONFIG_DIR}_backup_$(date +%Y%m%d_%H%M%S)"
    echo "Existing Neovim config found. Creating backup at:"
    echo "   $BACKUP_DIR"
    mv "$NVIM_CONFIG_DIR" "$BACKUP_DIR"
  fi
}

# Clone new config
install_config() {
  echo "Cloning Neovim config from $REPO_URL ..."
  git clone --depth=1 "$REPO_URL" "$NVIM_CONFIG_DIR"
  echo "Neovim config installed to: $NVIM_CONFIG_DIR"
}

# Main
main() {
  echo "Installing Neovim configuration..."
  detect_os
  backup_existing
  install_config
  echo "✨ Done! Launch Neovim to apply your configuration."
}

main "$@"
