
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
# plugins=(git)

# Load oh-my-zsh
# source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias dfconfig="cd ~/repos/dotfiles/ && nvim"
alias ll="ls -alhF --group-directories-first"
alias la="ls -A"
alias l="l -cF"
alias cd..="cd .."
alias :q="exit"

# make and enter a directory with one command
function mkcd() {
  mkdir $1
  cd $1
}

# overwrite the default to use ll instead of ls
bindkey -s "^[l" "ll^J"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Prevent microsoft from spying too much:
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# bun completions
[ -s "/home/alexlichtenberger/.bun/_bun" ] && source "/home/alexlichtenberger/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# thefuck
eval $(thefuck --alias)

# linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# UV
. "$HOME/.local/bin/env"

# zellij
eval "$(zellij setup --generate-auto-start zsh)"

# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/i_miss_p10k.omp.json)"

