# dotfiles

## Installation

1. Clone this repository and `cd` into it.
2. Install the software in [Software Links](#software-links)
3. Install remaining packages using the following brew commands:
   1. `brew install stow neovim lazygit uv oh-my-posh ripgrep fd bat zellij thefuck z tlrc tree-sitter-cli zsh`
   2. `brew install --cask font-fira-code-nerd-font`
4. Change default shell from bash with `echo "$(which zsh)" | sudo tee -a /etc/shells` and then `chsh -s "$(which zsh)"`
   1. It might help as this point to `export $SHELL="$(which zsh)"` as well.
5. Symlink config files with `make all`
6. Update your terminal to use Nord and FiraCodeNF

(_Symlinks can all be removed with `make delete`_)

## Software Links

These need to be manually installed:

- [linuxbrew](https://brew.sh/)
- [Node/NVM](https://github.com/nvm-sh/nvm)

## Notes for Fedora

Gnome Extensions (install via extension manager):

- Alphabetical App Grid
- Battery Time (for laptops)
- Night Theme Switcher
- Tiling Shell
- UPower Battery (for laptops)

## Additional Resources

- <https://www.nerdfonts.com/font-downloads>
- <https://www.nerdfonts.com/cheat-sheet>
