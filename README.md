# dotfiles

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [dotfiles](#dotfiles)
  - [Installation](#installation)
  - [Required Packages*](#required-packages)
  - [Other Required Software](#other-required-software)
  - [Optional additional software/packages*](#optional-additional-softwarepackages)
  - [Research to be done](#research-to-be-done)
  - [Resources](#resources)
  - [NVIM](#nvim)

<!-- /code_chunk_output -->

## Installation
Follow below for a full, headless, or custom install (install will specify what it is overwriting)

1. Clone repo to `~/repos/dotfiles`
2. Install dependencies/software/packages for installation type
3. cd into install_scripts
4. Run `chmod +x dflink && ./dflink`
5. Follow the installer and verify that symlinks are valid

WSL notes:
- run ` Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux` in an elevated powershell prompt
- install ubuntu lts via microsoft store
- download windows terminal so you don't hate life
- use the instructions above

## Required Packages*
| Package                                    | light | full |
| ------------------------------------------ | ----- | ---- |
| zsh                                        | ✅    | ✅   |
| git                                        | ✅    | ✅   |
| curl                                       | ✅    | ✅   |
| [i3-gaps](https://github.com/Airblader/i3) |       | ✅   |
| feh                                        |       | ✅   |
| picom                                      |       | ✅   |
| lxappearance                               |       | ✅   |
| rofi                                       |       | ✅   |
| mlocate                                    |       | ✅   |
| polybar<sup>1</sup>                        |       | ✅   |
| playerctl                                  |       | ✅   |
| imagemagick                                |       | ✅   |
| node                                       |       | ✅   |
| npm                                        |       | ✅   |

1. polybar must be [installed manually](https://github.com/polybar/polybar) for ubuntu v>20.10

## Other Required Software
These need to be manually installed in step 3:
- [FiraCodeNF](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode) (check resources for FiraCode Nerd Font link)
- [kitty](https://sw.kovidgoyal.net/kitty/binary/#desktop-integration-on-linux)
  - run `ln -s ~/.local/kitty.app/bin/kitty /usr/bin/` instead of supplied command

These will Automatically be installed in step 5:
- [Oh-My-Zsh](https://ohmyz.sh/)
- [p10k](https://github.com/romkatv/powerlevel10k)

## Optional additional software/packages*
- [VS Code](https://code.visualstudio.com/)
- [Spotify Client](https://www.spotify.com/us/)
- nvim
- htop
- neofetch
- Arandr
- [Node/NVM](https://github.com/nvm-sh/nvm)
  - double check node path in init.vim and npm path in coc-settings.json


## Research to be done

- [Get this running on Ubuntu Server](https://askubuntu.com/questions/870364/how-do-i-install-ubuntu-without-a-de)
     - requires installing/finding
       - x
       - firefox
       - a DM
       - a terminal
       - a file explorer (nautalis, dolphin)
     - things to double check are installed:
       - pactl
       - alsamixer
- improve rofi alt tab switcher

## Resources
 - https://thevaluable.dev/i3-config-mouseless/
 - https://i3wm.org/docs/userguide.html#fonts
 - https://www.youtube.com/watch?v=j1I63wGcvU4&ab_channel=AlexBooker
 - https://kifarunix.com/install-and-setup-i3-windows-manager-on-ubuntu-20-04/
 - https://www.nerdfonts.com/font-downloads
 - https://www.nerdfonts.com/cheat-sheet
 - https://www.youtube.com/watch?v=S1jQfGcKjtA&ab_channel=EricMurphy

## NVIM
- https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
- install universal-ctags (apt package)
- :PlugInstall
- [shift keybinds in kitty](https://www.reddit.com/r/neovim/comments/mbj8m5/how_to_setup_ctrlshiftkey_mappings_in_neovim_and/) -- NOT WORKING YET
- [Install COC extensions](https://vimawesome.com/plugin/coc-nvim)
  - COC requires node and npm (must be in `/usr/bin/node` and `/usr/bin/npm`)
  - once installed, run `:CocInstall coc-marketplace` and the `:CocList marketplace`

*packages without links can be installed via apt without any extra steps