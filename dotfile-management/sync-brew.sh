#!/usr/bin/env bash

echo "Installing homebrew formulas..."

if [[ $(uname) == "Darwin" ]]; then
  echo "On mac"
  FILE="Brewfile"
else
  echo "On linux"
  # General tools#
  grep -v '^cask ' ~/dotfile-management/Brewfile >~/dotfile-management/Brewfile-linux
  FILE="Brewfile-linux"

fi

brew bundle --file ~/dotfile-management/$FILE --force cleanup
