DOTS="$HOME/.dotfiles"

function symlink {
    rm -f "$2"
    ln -sf "$1" "$2"
}

echo -e "\033[32mSymlinking Configuration\033[0m"

echo "···· Linking dotfiles"

for from in $(find $DOTS -name ".*" -type f -maxdepth 1); do
    file="${from##*/}";
    to="$HOME/$file";

    if [ "$file" = ".DS_Store" ]; then
      continue;
    fi;

    echo "        $file --> $to";
    symlink $from $to;
done

echo "···· Linking ZSH"

symlink "$DOTS/zsh/config.sh" "$HOME/.zshrc"

echo "···· Linking VSCode"

mkdir -p "$HOME/Library/Application Support/Code/User"
symlink "$DOTS/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
symlink "$DOTS/vscode/snippets.json" "$HOME/Library/Application Support/Code/User/snippets/javascript.code-snippets"

echo ".... Linking VIM"

mkdir -p "$HOME/.vim/colors"
symlink "$DOTS/vim/colors/onedark.vim" "$HOME/.vim/colors/onedark.vim"
