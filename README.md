# About

This is simple setup for my terminal. All config files for setting up terminal to my liking should be here.

# Quickstart

Run:

```shell
curl -s https://raw.githubusercontent.com/Hugo-Persson/dotfiles/refs/heads/main/easy-setup.sh | bash
```

```sh
# Ensure CURL intalled, if not install it
# For debian:
#sudo apt install curl

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install YADM
brew install yadm

#  Clone repo
yadm clone git@github.com:Hugo-Persson/dotfiles.git
```

# Dotfile management

`ly` to open lazygit for dotfiles

Use negated .gitignore files for directories that should be tracked then `yadm add <file>`

When changing secrets run `yadm encrypt`

# My tools

Here I will go more in depth about my workflow and the tools I use.

## Tmux

## NeoVim

## Fish

## Yabai + Skhd

## Alacritty

## CLI Tools

### exa

### zoxide

### dust-cli

### bat

### otree

### jless

### tabiew

View CSV

### serpl

Search and replace
