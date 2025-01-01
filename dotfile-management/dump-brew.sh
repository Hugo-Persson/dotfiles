#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
  brew bundle dump --force --file ~/dotfile-management/Brewfile
else
  echo "Not darwin, not continuing"
fi
