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

# moon
export PATH="$HOME/.moon/bin:$PATH"

# proto
export PROTO_HOME="$HOME/.proto"
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH"

# rust
export CARGO_TARGET_DIR="$HOME/.cargo/shared-target"

# go
export GOBIN="$HOME/go/bin"
export PATH="$GOBIN:$PATH"

# Wasm
export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="$WASMTIME_HOME/bin:$PATH"

# Source aliases and exports
source "$ZSH/oh-my-zsh.sh"
source "$HOME/.dotfiles/zsh/aliases.sh"
source "$HOME/.dotfiles/zsh/exports.sh"
source "$HOME/.dotfiles/zsh/config-work.sh"

# Must be last!
# export PROTO_LOG=trace
# eval "$(proto activate zsh)"
