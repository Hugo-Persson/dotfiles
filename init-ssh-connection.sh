#!/usr/bin/env fish
echo $argv[1] >~/last-ssh-connection-theme
tmux a || tmux
