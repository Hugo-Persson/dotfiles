#!/bin/bash
set -e

# Check if Homebrew is already installed
check_brew() {
  if command -v brew &>/dev/null; then
    return 0
  elif [[ "$OSTYPE" == "linux-gnu"* ]] && [ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
    return 0
  elif [[ "$OSTYPE" == "darwin"* ]] && [ -f "/usr/local/bin/brew" ] || [ -f "/opt/homebrew/bin/brew" ]; then
    return 0
  else
    return 1
  fi
}

# Exit if Homebrew is already installed
if ! check_brew; then
  echo "Homebrew not installed, please install with"
  echo "/bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
  exit 1
fi

# Install necessary packages
echo "Installing necessary packages: build-essential, procps, curl, file, git..."
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Linux
  if command -v apt-get &>/dev/null; then
    sudo apt-get update && sudo apt-get install -y build-essential procps curl file git
  elif command -v dnf &>/dev/null; then
    sudo dnf install -y make gcc gcc-c++ kernel-devel procps curl file git
  elif command -v yum &>/dev/null; then
    sudo yum install -y make gcc gcc-c++ kernel-devel procps curl file git
  else
    echo "Unable to install packages automatically. Please install build-essential, procps, curl, file, git manually."
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS - most of these are included with command line tools
  xcode-select --install
  brew install procps curl
else
  echo "Unsupported operating system. Please install required packages manually."
fi

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
