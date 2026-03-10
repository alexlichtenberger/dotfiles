# dotfiles

## Installation

1. Clone this repository and `cd` into it.
2. Install the software in [Software Links](#software-links)
3. Install remaining packages using the following brew commands:
   1. `brew install stow neovim lazygit uv oh-my-posh ripgrep fd bat zellij thefuck zoxide tree-sitter-cli zsh fzf pnpm mise`
   2. `brew install --cask font-fira-code-nerd-font`
4. Change default shell from bash with `echo "$(which zsh)" | sudo tee -a /etc/shells` and then `chsh -s "$(which zsh)"`
   1. It might help as this point to `export $SHELL="$(which zsh)"` as well.
5. Symlink config files with `mise run link`
6. Update your terminal of choice to use Nord and FiraCodeNF

(_Symlinks can all be removed with `mise run unlink`_)

## Software Links

These need to be manually installed:

- [home/linuxbrew](https://brew.sh/)

## Notes for Fedora

Gnome Extensions:

- Alphabetical App Grid
- Battery Time
- Night Theme Switcher
- Tiling Shell
- UPower Battery

## Additional Resources

- <https://www.nerdfonts.com/font-downloads>
- <https://www.nerdfonts.com/cheat-sheet>
