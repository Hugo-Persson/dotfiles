#!/bin/bash

# Check if git is installed
if ! command -v git &>/dev/null; then
  echo "Git is not installed. Would you like to install it? (y/n)"
  read -r response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Installing git..."
    # Detect OS and use appropriate package manager
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      # Linux
      if command -v apt-get &>/dev/null; then
        sudo apt-get update && sudo apt-get install -y git
      elif command -v dnf &>/dev/null; then
        sudo dnf install -y git
      elif command -v yum &>/dev/null; then
        sudo yum install -y git
      else
        echo "Unable to install git automatically. Please install git manually."
        exit 1
      fi
    elif [[ "$OSTYPE" == "darwin"* ]]; then
      # macOS
      xcode-select --install # Install Command Line Tools which includes git
    else
      echo "Unsupported operating system. Please install git manually."
      exit 1
    fi
  else
    echo "Git is required for this script to work. Please install git manually."
    exit 1
  fi
else
  echo "Git is already installed."
fi
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install gcc gpg

# TTY fix
# https://github.com/yadm-dev/yadm/issues/33#issuecomment-780082846
echo "use-agent" >>~/.gnupg/gpg.conf
echo "pinentry-mode loopback" >>~/.gnupg/gpg.conf
echo "allow-loopback-pinentry" >>~/.gnupg/gpg-agent.conf

# Install YADM
brew install yadm

#  Clone repo
yadm clone https://github.com/Hugo-Persson/dotfiles

yadm remote set-url origin git@github.com:Hugo-Persson/dotfiles.git

