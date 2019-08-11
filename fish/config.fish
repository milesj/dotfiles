# FISH PROFILE
# All bootstrapping related to the current user and or profile should be defined here.

# Set PATH to include Homebrew and other important paths
set PATH /usr/local/opt/curl/bin /usr/local/bin /usr/local/sbin $PATH

# Remove fish greeting
set fish_greeting

# Source aliases and exports
source "$HOME/.dotfiles/fish/aliases.fish"
source "$HOME/.dotfiles/fish/exports.fish"
