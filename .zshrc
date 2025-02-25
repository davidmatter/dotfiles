###########################
######## oh-my-zsh ########
###########################

export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.dotfiles/oh-my-zsh"
export ZSH_THEME="robbyrussell"

plugins=(aliases pnpm-shell-completion)

source $ZSH/oh-my-zsh.sh

###########################
######## oh-my-posh ########
###########################

export OM_POSH_CONFIG="$HOME/.dotfiles/oh-my-posh/config.json"

# Only use oh-my-posh if not in Apple Terminal
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $OM_POSH_CONFIG)"
fi

###########################
####### user config #######
###########################

# Node
export NODE_COMPILE_CACHE=~/.cache/nodejs-compile-cache

# pnpm
export PNPM_HOME=~/Library/pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Aliases
alias p="pnpm"
alias po="pnpm outdated -r"
alias pu="pnpm update -r"
alias b="bun"
alias gpl="git pull"
alias gps="git push"
alias gc="git checkout"
alias gcm="git checkout master"
alias gs="git status"

###########################
########### PATH ##########
###########################
export PATH="$PATH:/usr/local/share/dotnet/x64"

