#!/usr/bin/env bash
brew install gum
gum confirm "This script will install all the necessary tools and configurations. Do you want to continue?" || exit 1
if gum confirm "Do you trust this machine and want to decrypt your yadm secrets?"; then
  yadm decrypt
else
  ~/dotfile-management/setup/default-secrets.sh
  echo "Skipping decryption of yadm secrets."
fi

PROFILE=$(~/scripts/set-profile.sh)

~/dotfile-management/sync/sync.sh
~/dotfile-management/setup/shared.sh

if [[ $(PROFILE) == "Dev" ]]; then
  ~/dotfile-management/setup/dev.sh
elif [ "$PROFILE" = "Server" ]; then
  ~/dotfile-management/setup/server.sh
fi

cd ~/.config/karabiner && pnpm i && pnpm build

tmux source ~/.config/tmux/tmux.conf

echo "Everything installed, run 'tn'  to atach to tmux then use CTRL + SPACE  -> I to install TPM plugins "
