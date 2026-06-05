#!/usr/bin/env fish
# Mirror tmux prefix+g: lazygit in a git repo, YADM dotfiles repo otherwise.

if git rev-parse --is-inside-work-tree >/dev/null 2>&1
    lazygit
else
    lazygit -w ~ -g ~/.local/share/yadm/repo.git
end
