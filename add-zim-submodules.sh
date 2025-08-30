#!/usr/bin/env bash
# add-zim-submodules.sh
set -euo pipefail

modules=(
  asciiship
  completion
  duration-info
  environment
  git-info
  git
  input
  termtitle
  utility
  zsh-autosuggestions
  zsh-completions
  zsh-history-substring-search
  zsh-syntax-highlighting
)

for m in "${modules[@]}"; do
  git submodule add --depth 1 \
    "https://github.com/zimfw/${m}.git" \
    "zsh/.zim/modules/${m}"
done
