# change working directory
cd ~/repos/dotfiles
mkdir deps

# install oh my zsh & set zsh to default shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install p10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# disable x timeout
xset s off