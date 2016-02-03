# BASH PROFILE
# All bootstrapping related to the current user and or profile should be defined here.

# Load our dotfiles
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Initialize SCM breeze if defined
if [ -s "$HOME/.scm_breeze/scm_breeze.sh" ]; then
    source "./.scm_breeze/scm_breeze.sh";
fi;

# Initailize RBENV if defined
if exists rbenv; then
    eval "$(rbenv init -)";
fi;
