# PROFILE
# All bootstrapping related to the current user and or profile should be defined here.

export PATH="$HOME/bin:/usr/local/opt/curl/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Setup zsh
ZSH_THEME="agnoster"
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

# Setup scmpuff
eval "$(scmpuff init -s --aliases=false)"

# Setup nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Source aliases and exports
source "$ZSH/oh-my-zsh.sh"
source "$HOME/.dotfiles/zsh/aliases.sh"
source "$HOME/.dotfiles/zsh/exports.sh"
source "$HOME/.dotfiles/zsh/config-work.sh"
