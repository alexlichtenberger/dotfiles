
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt MENU_COMPLETE

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

batdiff() {
    git diff --name-only --relative --diff-filter=d | xargs bat --diff
}

# overwrite the default to use ll instead of ls
bindkey -s "^[l" "ll^J"

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
export THEFUCK_EXCLUDED_SEARCH_PATH_PREFIXES=/mnt

# linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# UV
. "$HOME/.local/bin/env"

# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/i_miss_p10k.omp.json)"

# RUNTIME DIR FIX FOR WSL
if [[ $(grep -i Microsoft /proc/version) ]]; then
  export XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir
fi

# zellij
eval "$(zellij setup --generate-auto-start zsh)"

. $HOMEBREW_PREFIX/etc/profile.d/z.sh
