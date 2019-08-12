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
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi;

echo "···· Tapping dependencies"
brew tap caskroom/cask

echo "···· Installing packages"
brew install git
brew install scmpuff
brew install curl
brew install openssl
brew install fish

echo "···· Verifying install"
brew doctor

# 2) Symlink
bash "$DOTS/symlink.sh"

# 3) Fish
echo -e "\033[32mSetting Up Fish\033[0m"

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fish -c fisher

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

# 6) Node
echo -e "\033[32mSetting Up Node\033[0m"

nvm use 12
npm install -g yarn
