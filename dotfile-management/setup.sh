#!/usr/bin/env bash
yadm decrypt
brew install gum

PROFILE=$(~/scripts/set-profile.sh)

~/dotfile-management/sync/sync.sh
~/dotfile-management/setup/shared.sh

if [[ $(PROFILE) == "Dev" ]]; then
  ~/dotfile-management/setup/dev.sh
elif [ "$PROFILE" = "Server" ]; then
  ~/dotfile-management/setup/server.sh
fi

tmux source ~/.config/tmux/tmux.conf

echo "Everything installed, run 'tn'  to atach to tmux then use CTRL + SPACE  -> I to install TPM plugins "
