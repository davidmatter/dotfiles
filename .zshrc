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

# pnpm
export PNPM_HOME="~/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun
[ -s "/Users/matterd/.bun/_bun" ] && source "~/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Aliases
alias p="pnpm"
alias b="bun"

###########################
########### PATH ##########
###########################
export PATH="$PATH:/usr/local/share/dotnet/x64"
