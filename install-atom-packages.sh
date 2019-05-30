#!/usr/bin/env bash

echo -e "\033[32mInstalling Atom packages\033[0m"

apm install atom-beautify
apm install atom-typescript
apm install autocomplete-modules
apm install caniuse
apm install copy-path
apm install file-icons
apm install fonts
apm install highlight-selected
apm install hyperclick
apm install intentions
apm install js-hyperclick
apm install language-babel
apm install language-graphql
apm install language-ini
apm install language-rust
apm install linter-eslint
apm install linter-markdown
apm install linter-ruby
apm install linter-rust
apm install linter-sass-lint
apm install merge-conflicts
apm install nuclide
apm install nuclide-format-js
apm install related
apm install sort-lines
apm install tool-bar
apm install tree-view-copy-relative-path

echo -e "\n\033[32mComplete!\033[0m"
