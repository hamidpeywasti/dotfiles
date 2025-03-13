# My Linux Config Files

This repository contains my personal Linux configuration files, organized for easy deployment using [GNU Stow](https://www.gnu.org/software/stow/). These configs are tailored to my workflow but can serve as a starting point for others looking to manage their dotfiles.

## What's Inside

- **Shell**: `.bashrc`, `.zshrc`, etc. (custom aliases, functions, and prompt settings)
- **Editors**: `.vimrc`, `.config/nvim/init.vim`, etc.
- **Other**: Miscellaneous configs like `.gitconfig`, `.tmux.conf`, etc.

(Adjust this list based on what’s actually in your repo!)

## Prerequisites

- **GNU Stow**: Used to symlink the config files into your home directory.
  - Install on Debian/Ubuntu: `sudo apt install stow`
  - Install on Fedora: `sudo dnf install stow`
  - Install on Arch: `sudo pacman -S stow`
- A Unix-like system (Linux, WSL, macOS, etc.)
- (Add any other dependencies, e.g., `zsh`, `nvim`, or specific tools your configs rely on.)

## How to Use

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git ~/dotfiles
   cd ~/dotfiles