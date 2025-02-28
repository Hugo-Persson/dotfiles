#!/bin/bash
cd ~/dotfile-management/ || exit
PROFILE=$(~/scripts/get-profile.sh)
echo "Profile is $PROFILE"

if [[ $PROFILE == "Dev" ]]; then
  FILE="Brewfile-dev"
elif [ "$PROFILE" = "Server" ]; then
  FILE="Brewfile-server"
fi
BREWFILE_PATH="$HOME/dotfile-management/sync/$FILE"
brew bundle dump --force --file "$BREWFILE_PATH"

echo "Brewfile dumped to $BREWFILE_PATH"
