sudo -v

DOTS="$HOME/.dotfiles"

function exists() {
    command -v "$1" >/dev/null 2>&1;
}

if [ ! -d "$DOTS" ]; then
    echo "~/.dotfiles/ does not exist!";
    exit 1;
fi;

# 1) Homebrew
echo -e "\033[32mInstalling Homebrew\033[0m"

if ! exists brew; then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi;

echo "···· Installing packages"
brew install git
brew install scmpuff
brew install curl
brew install openssl
brew install zsh-completions
brew install diff-so-fancy

echo "···· Verifying install"
brew doctor

# 2) Symlink
bash "$DOTS/symlink.sh"

# 3) ZSH
echo -e "\033[32mSetting Up ZSH\033[0m"

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 4) Git
echo -e "\033[32mSetting Up Git\033[0m"

echo -n "···· Name [enter]: "
read name
git config --global user.name "$name"

echo -n "···· Email [enter]: "
read email
git config --global user.email "$email"

# 5) OSX
echo -e "\033[32mSetting Up OSX\033[0m"

bash "$DOTS/.osx"
