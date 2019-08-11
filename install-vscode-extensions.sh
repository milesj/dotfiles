#!/usr/bin/env bash

echo -e "\033[32mInstalling VSCode extensions\033[0m"

code --install-extension akamud.vscode-theme-onedark
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension patrys.vscode-code-outline
code --install-extension dbaeumer.vscode-eslint
code --install-extension npxms.hide-gitignored
code --install-extension PKief.material-icon-theme
code --install-extension esbenp.prettier-vscode
code --install-extension robinbentley.sass-indented
code --install-extension agauniyal.vscode-caniuse
code --install-extension ms-vscode.atom-keybindings
code --install-extension wayou.vscode-todo-highlight
code --install-extension qassimfarid.ejs-language-support
code --install-extension ms-azuretools.vscode-docker
code --install-extension kumar-harsh.graphql-for-vscode

echo -e "\n\033[32mComplete!\033[0m"
