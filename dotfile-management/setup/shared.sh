#!/usr/bin/env bash

echo "Setting shell to fish..."
if [[ "$(uname)" == "Darwin" ]]; then
  # macOS
  if ! grep -q "/opt/homebrew/bin/fish" /etc/shells; then
    echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
    chsh -s /opt/homebrew/bin/fish
  fi
else
  # Linux
  if ! grep -q "/home/linuxbrew/.linuxbrew/bin/fish" /etc/shells; then
    echo "/home/linuxbrew/.linuxbrew/bin/fish" | sudo tee -a /etc/shells
    chsh -s /home/linuxbrew/.linuxbrew/bin/fish
  fi
fi

if ! command -v omf &>/dev/null; then
  echo "OMF not installed, installing"
  rm -rf ~/.local/share/omf
  curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
fi

echo "Installing tpm"
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
else
  echo "tpm already installed"
fi

# Check if git plugin is already installed
if ! omf list | grep -q "git"; then
  echo "Installing git plugin for fish..."
  omf install https://github.com/jhillyerd/plugin-git
else
  echo "Git plugin already installed"
fi
pnpm install -g @microsoft/compose-language-service

#curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

gh extension install github/gh-copilot
