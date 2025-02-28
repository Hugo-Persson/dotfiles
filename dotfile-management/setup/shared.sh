#!/usr/bin/env bash

echo "Setting shell to fish..."
if ! grep -q "/home/linuxbrew/.linuxbrew/bin/fish" /etc/shells; then
  echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
  chsh -s /opt/homebrew/bin/fish
fi

if ! command -v omf &>/dev/null; then
  echo "OMF not installed, installing"
  curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
fi

echo "Installing tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

omf install https://github.com/jhillyerd/plugin-git
npm install -g @microsoft/compose-language-service

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
