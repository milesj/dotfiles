# BASH PROFILE
# All bootstrapping related to the current user and or profile should be defined here.

export PATH="/usr/local/opt/curl/bin:/usr/local/bin:$PATH"

# Load our dotfiles.
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion).
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it.
shopt -s histappend;

# Autocorrect typos in path names when using `cd`.
shopt -s cdspell;

# Initialize scmpuff if defined.
if exists scmpuff; then
    eval "$(scmpuff init -s --aliases=false)";
fi;

# Initialize rbenv if defined.
if exists rbenv; then
    eval "$(rbenv init -)";
fi;

# Initialize nvm.
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
