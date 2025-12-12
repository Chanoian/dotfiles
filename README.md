# My Dotfiles

Welcome to my personal dotfiles!

## 📂 What’s Inside

- 🌀 **Zsh** — aliases, plugins, and themes (`.zshrc`, `.p10k.zsh`)
- 📝 **Vim/Neovim** — clean editing setup
- 💻 **WezTerm** — terminal configuration
- 🍺 **Brew leaves** — handy macOS packages

## Setup with GNU Stow

Clone the repo and use [GNU Stow](https://www.gnu.org/software/stow/) to symlink configs into place:

```bash
git clone https://github.com/Chanoian/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Example: stow zsh
stow zsh

# Or stow everything
stow */
```
