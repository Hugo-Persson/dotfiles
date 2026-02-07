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

## NearDrop

## WezTerm

## MQTTX

https://mqttx.app/

## CLI Tools

### [aichat](https://github.com/sigoden/aichat)

AI chat from command line. Used in many other commands.

#### Usage

```sh
aichat <question>
```

### [bat](https://github.com/sharkdp/bat)

A cat clone with syntax highlighting and Git integration

### [dua-cli](https://github.com/Byron/dua-cli)

Disk usage analyzer with an ncurses interface

### [eza](https://github.com/eza-community/eza)

Modern replacement for ls with colors and icons

### [fd](https://github.com/sharkdp/fd)

Simple, fast and user-friendly alternative to find

### [fzf](https://github.com/junegunn/fzf)

Command-line fuzzy finder

### [gh](https://github.com/cli/cli)

GitHub CLI tool

### [git-cliff](https://github.com/orhun/git-cliff)

Changelog generator for git repositories

### [git-delta](https://github.com/dandavison/delta)

Syntax highlighter for git and diff output

### [git-open](https://github.com/paulirish/git-open)

Open the GitHub page for a repository

### [gitleaks](https://github.com/gitleaks/gitleaks)

Detect hardcoded secrets in git repos

### [gum](https://github.com/charmbracelet/gum)

Tool for glamorous shell scripts

### [htop](https://github.com/htop-dev/htop)

Interactive process viewer

### [httpie](https://github.com/httpie/httpie)

Modern command-line HTTP client

### [hyperfine](https://github.com/sharkdp/hyperfine)

Command line tool to easily benchmark programs

### [lazydocker](https://github.com/jesseduffield/lazydocker)

Simple terminal UI for Docker

#### Usage

```sh
ld
```

### [lazygit](https://github.com/jesseduffield/lazygit)

Simple terminal UI for git commands

#### Usage

```sh
lg
```

### [mask](https://github.com/jacobdeichert/mask)

A replacement to Make that enables you define commands to run in simple markdown files.

#### Usage

```sh
mask build
mask test
```

### [mprocs](https://github.com/pvolok/mprocs)

Run commands in background detaches similiar to docker.

```yaml
procs:
  nvim:
    cmd: ["nvim"]
  server:
    shell: "nodemon server.js"
  webpack: "webpack serve"
  tests:
    shell: "jest -w"
    env:
      NODE_ENV: test
```

```sh
mprocs

```

### [neovim](https://github.com/neovim/neovim)

Vim-fork focused on extensibility and usability

### [node](https://github.com/nodejs/node)

JavaScript runtime built on Chrome's V8 JavaScript engine

### [opencv](https://github.com/opencv/opencv)

Open source computer vision library

### [opentofu](https://github.com/opentofu/opentofu)

Open source Terraform alternative

### [otree](https://github.com/fioncat/otree)

A tool to view JSON, YAML and TOML files

#### Usage

```sh
otree /path/to/file.json
otree /path/to/file.yaml
otree /path/to/file.toml
```

### [pam-reattach](https://github.com/fabianishere/pam_reattach)

PAM module for reattaching to the user's GUI session

### [pandoc](https://github.com/jgm/pandoc)

Universal markup converter

### [php](https://github.com/php/php-src)

PHP scripting language

### [pngpaste](https://github.com/jcsalterego/pngpaste)

Paste PNG into files from clipboard

### [ripgrep](https://github.com/BurntSushi/ripgrep)

Line-oriented search tool that recursively searches directories

### [rust-analyzer](https://github.com/rust-lang/rust-analyzer)

Rust language server

### [s3cmd](https://github.com/s3tools/s3cmd)

Command line tool for managing Amazon S3 and CloudFront services

### [sccache](https://github.com/mozilla/sccache)

Shared compilation cache

### [sentry-cli](https://github.com/getsentry/sentry-cli)

Command line utility for Sentry

### [serpl](https://github.com/yassinebridi/serpl)

Search and replace

#### Usage

```sh
serpl
```

### [sesh](https://github.com/joshmedeski/sesh)

Smart session manager for tmux

### [speedtest-cli](https://github.com/sivel/speedtest-cli)

Command line interface for testing internet bandwidth

### [sqlfluff](https://github.com/sqlfluff/sqlfluff)

SQL linter and auto-formatter

### [starship](https://github.com/starship/starship)

Minimal, blazing-fast, and infinitely customizable prompt

### [superfile](https://github.com/yorukot/superfile)

Pretty fancy and modern terminal file manager

### [swiftformat](https://github.com/nicklockwood/SwiftFormat)

Code library and command-line tool for reformatting Swift code

### [swiftlint](https://github.com/realm/SwiftLint)

Tool to enforce Swift style and conventions

### [tabiew](https://github.com/shshemi/tabiew)

View CSV files in terminal

### [thefuck](https://github.com/nvbn/thefuck)

Corrects errors in previous console commands

### [tldr](https://github.com/tldr-pages/tldr)

Simplified and community-driven man pages

### [tmux](https://github.com/tmux/tmux)

Terminal multiplexer

### [typst](https://github.com/typst/typst)

Modern markup-based typesetting system

### [vale](https://github.com/errata-ai/vale)

Syntax-aware linter for prose

### [wget](https://github.com/mirror/wget)

Internet file retriever

### [xcode-build-server](https://github.com/SolaWing/xcode-build-server)

Build server protocol implementation for Xcode

### [yadm](https://github.com/TheLocehiliosan/yadm)

Yet Another Dotfiles Manager

### [zoxide](https://github.com/ajeetdsouza/zoxide)

Smarter cd command that learns your habits

### [dark-notify](https://github.com/cormacrelf/dark-notify)

Notify when macOS switches between light and dark mode

### [urlencode](https://github.com/dev-shimada/urlencode)

URL encoding/decoding utility

### [sentry-wizard](https://github.com/getsentry/sentry-wizard)

Sentry project setup wizard

### [dns-cli-tools](https://github.com/hugo-persson/dns-cli-tools)

Custom DNS CLI tools

### [infisical](https://github.com/Infisical/infisical)

Open source secret management platform

### [mongodb-database-tools](https://github.com/mongodb/mongo-tools)

MongoDB database tools

https://github.com/jhspetersson/fselect

https://github.com/tbillington/kondo
