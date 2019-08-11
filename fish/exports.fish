# EXPORTS
# All configuration related to exports should be defined here.

set -x TERM xterm-256color
set -x EDITOR "vim" # atom
set -x HISTCONTROL ignorespace:ignoredups

# Languages
set -x NODE_ENV development
set -x REACT_ENV development

# Terminal
# ANSI: http://misc.flogisoft.com/bash/tip_colors_and_formatting
# Prompt: http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
# reset=(tput sgr0)

# set -x PS1 '\[\e[95m\][\t]\[$reset\] \[\e[96m\]\u\[$reset\]:\[\e[92m\]\W\[$reset\] \[\e[1;93m\]>\[$reset\] '
# set -x CLICOLOR 1
# set -x LSCOLORS gxfxexcxbxdxdxabaBagaG
