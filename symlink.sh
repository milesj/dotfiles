#!/usr/bin/env bash

# SYMLINK
# Symlinks the dotfiles to the users home directory.

dots="$HOME/.dotfiles";

function symlink {
    rm -f "$2"
    ln -sf "$1" "$2"
}

# Symlink dotfiles
echo "···· Linking dotfiles";

for from in $(find $dots -name ".*" -type f -maxdepth 1); do
    file="${from##*/}";
    to="$HOME/$file";

    if [ "$file" = ".DS_Store" ]; then
      continue;
    fi;

    echo "        $file --> $to";
    symlink $from $to;
done

# Symlink certain files manually
echo "···· Linking Atom config"
symlink "$dots/atom/config.cson" "$HOME/.atom/config.cson"

# Source the profile
echo "···· Setting up Bash"
source "$HOME/.bash_profile"
