# FISH PROFILE
# All bootstrapping related to the current user and or profile should be defined here.

# Set PATH to include Homebrew and other important paths
set PATH /usr/local/opt/curl/bin /usr/local/bin /usr/local/sbin $PATH

# Remove fish greeting
set fish_greeting

# Enable full colors
set fish_term256 1

# Source aliases and exports
source "$HOME/.dotfiles/fish/aliases.fish"
source "$HOME/.dotfiles/fish/exports.fish"

# Set theme and prompt params
set SPACEFISH_GIT_STATUS_COLOR "black"
set SPACEFISH_PACKAGE_SHOW false
set SPACEFISH_JULIA_SHOW false
set SPACEFISH_HASKELL_SHOW false
set SPACEFISH_AWS_SHOW false
set SPACEFISH_VENV_SHOW false
set SPACEFISH_CONDA_SHOW false
set SPACEFISH_ELIXIR_SHOW false
set SPACEFISH_PYENV_SHOW false
set SPACEFISH_GOLANG_SHOW false
set SPACEFISH_PHP_SHOW false
set SPACEFISH_RUST_SHOW false
set SPACEFISH_RUBY_SHOW false
set SPACEFISH_DOTNET_SHOW false
set SPACEFISH_KUBECONTEXT_SHOW false
