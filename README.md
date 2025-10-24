# Dotfiles Configuration

This repository contains my personal dotfiles configuration for various tools and applications on macOS/Linux.

## Technologies Used

### Shell
- **Zsh**: Primary shell with custom configuration in `.zshrc`.
- **Fish**: Alternative shell with configuration in `.config/fish/`.

### Terminal Emulators
- **Kitty**: Fast, feature-rich terminal emulator with configuration in `.config/kitty/`.
- **WezTerm**: GPU-accelerated terminal emulator with Lua-based configuration in `.config/wezterm/`.
- **Ghostty**: Modern terminal emulator with configuration in `.config/ghostty/`.
- **Warp**: Collaborative terminal with themes and keybindings in `.warp/`.

### Text Editors/IDEs
- **Neovim**: Highly configurable text editor with LazyVim distribution and Lua-based configuration in `.config/nvim/`, including plugins for LSP, treesitter, completion, and more.
- **Zed**: High-performance code editor with configuration in `.config/zed/`.

### Window Management
- **Yabai**: Tiling window manager for macOS with configuration in `.config/yabai/`.
- **Borders**: Adds borders to windows managed by yabai, configured in `.config/borders/`.
- **Skhd**: Hotkey daemon for macOS with keybindings in `.config/skhd/`.

### System Tools
- **Btop**: Resource monitor with configuration in `.config/btop/`.
- **Fastfetch**: System information tool with custom ASCII art and configuration in `.config/fastfetch/`.
- **Atuin**: Shell history tool with configuration in `.config/atuin/`.
- **Zellij**: Terminal multiplexer with configuration in `.config/zellij/`.
- **Ripgrep**: Fast text search tool.
- **Bat**: Cat clone with syntax highlighting.
- **FZF**: Fuzzy finder for command-line.
- **LazyDocker**: Simple terminal UI for Docker.
- **Podman**: Daemonless container engine.

### Version Control
- **Git**: Version control system with global configuration in `.gitconfig`.

### SSH
- SSH client configuration in `.ssh/config`.
- **LazySSH**: SSH management tool.

### Miscellaneous
- **Starship**: Cross-shell prompt with configuration in `starship.toml`.
- **OpenCode**: AI-powered coding assistant.
- Wallpapers stored in `walls/`.

## Installation

Clone this repository and symlink the configuration files to your home directory.

Note: Files ignored by `.gitignore` are not included in this repository.