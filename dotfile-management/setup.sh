#!/usr/bin/env bash
yadm decrypt
~/dotfile-management/sync-brew.sh
~/dotfile-management/install-mas.sh

if ! command -v omf &>/dev/null; then
  echo "OMF not installed, installing"
  curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
fi

echo "Setting shell to fish..."
if ! grep -q "/home/linuxbrew/.linuxbrew/bin/fish" /etc/shells; then
  echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
  chsh -s /opt/homebrew/bin/fish
fi

echo "Installing tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

omf install https://github.com/jhillyerd/plugin-git
npm install -g @microsoft/compose-language-service
npm install -g @astrojs/language-server
npm install -g semver

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

echo "Installing rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Linking java, SUDO needed"
sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk \
  /Library/Java/JavaVirtualMachines/openjdk.jdk

tmux source ~/.config/tmux/tmux.conf

echo "Everything installed, run 'tn'  to atach to tmux then use CTRL + SPACE  -> I to install TPM plugins "
