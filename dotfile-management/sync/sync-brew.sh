#!/usr/bin/env bash

PROFILE=$(~/scripts/get-profile.sh)
echo "Installing homebrew formulas..."

if [[ "$PROFILE" == "Dev" ]]; then
  echo "On mac"
  FILE="Brewfile-dev"
elif [ "$PROFILE" = "Server" ]; then
  echo "On linux"
  # General tools#
  FILE="Brewfile-server"

fi
BREWFILE_PATH="$HOME/dotfile-management/sync/$FILE"
echo "Installing from $BREWFILE_PATH"
brew bundle --file "$BREWFILE_PATH"
