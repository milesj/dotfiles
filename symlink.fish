set DOTS "$HOME/.dotfiles"

function symlink -a from to
    rm -f "$to"
    ln -sf "$from" "$to"
end

echo -e "\n\033[32mSymlinking Configuration\033[0m"

echo "···· Linking dotfiles"

for from in (find $DOTS -name ".*" -type f -maxdepth 1)
    set file (basename $from)
    set to "$HOME/$file"

    if test "$file" = ".DS_Store"
      continue
    end

    echo "        $file --> $to"
    symlink $from $to
end

echo "···· Linking Fish"

mkdir -p "$HOME/.config/fish"
symlink "$DOTS/fish/config.fish" "$HOME/.config/fish/config.fish"
symlink "$DOTS/fish/plugins" "$HOME/.config/fish/fishfile"

echo "···· Linking Atom"

mkdir -p "$HOME/.atom"
symlink "$DOTS/atom/config.cson" "$HOME/.atom/config.cson"
symlink "$DOTS/atom/snippets.cson" "$HOME/.atom/snippets.cson"

echo "···· Linking VSCode"

symlink "$DOTS/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
symlink "$DOTS/vscode/snippets.json" "$HOME/Library/Application Support/Code/User/snippets/javascript.code-snippets"

echo ".... Linking Hyper"

mkdir -p "$HOME/Library/Application Support/Hyper"
symlink "$DOTS/hyper/config.js" "$HOME/Library/Application Support/Hyper/.hyper.js"
symlink "$DOTS/hyper/config.js" "$HOME/.hyper.js"

echo ".... Linking VIM"

mkdir -p "$HOME/.vim/colors"
symlink "$DOTS/vim/colors/onedark.vim" "$HOME/.vim/colors/onedark.vim"
