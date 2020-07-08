# PROFILE
# All bootstrapping related to the current user and or profile should be defined here.

export PATH="$HOME/bin:/usr/local/opt/curl/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Setup zsh
ZSH_THEME="agnoster"
ZSH_DISABLE_COMPFIX=true
DISABLE_UPDATE_PROMPT=true # Autoupdate by default
DEFAULT_USER=$USER # Hide username from zsh theme

# Install zsh plugins
plugins=(
  nvm
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Enable zsh completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Source aliases and exports
source "$ZSH/oh-my-zsh.sh"
source "$HOME/.dotfiles/zsh/aliases.sh"
source "$HOME/.dotfiles/zsh/exports.sh"

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
