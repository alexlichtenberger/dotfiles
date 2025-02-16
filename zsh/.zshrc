# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# case insensitive completions
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
