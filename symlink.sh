#!/usr/bin/env bash

# SYMLINK
# Symlinks the dotfiles to the users home directory.

dots="$HOME/.dotfiles";

# Symlink dotfiles
if [ -d "$dots" ]; then
    echo "···· Linking dotfiles";
else
    echo "···· ~/.dotfiles/ does not exist!";
    exit 1;
fi;

for from in $(find $dots -name ".*" -type f -maxdepth 1); do
    file="${from##*/}";
    to="$HOME/$file";

    if [ "$file" = ".DS_Store" ]; then
      continue;
    fi;

    rm -f "$to";
    ln -sf "$from" "$to";

    echo "        $file --> $to";
done

# Symlink certain files manually
echo "···· Linking Atom config"
ln -sf "$dots/atom/config.cson" "$HOME/.atom/config.cson"

# Source the profile
echo "···· Setting up Bash"
source "$HOME/.bash_profile"
