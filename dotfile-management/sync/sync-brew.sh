#!/usr/bin/env bash

PROFILE=$(~/scripts/get-profile.sh)
echo "Installing homebrew formulas..."

if [[ $(PROFILE) == "Dev" ]]; then
  echo "On mac"
  FILE="Brewfile-dev"
elif [ "$PROFILE" = "Server" ]; then
  echo "On linux"
  # General tools#
  FILE="Brewfile-server"

fi

brew bundle --file ~/dotfile-management/sync/$FILE --force cleanup
