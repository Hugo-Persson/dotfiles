#!/bin/bash

# File to read
input_file="./mas_apps.txt"

if [[ $(uname) == "Darwin" ]]; then
  # Loop through each line
  while IFS= read -r line; do
    # Run your command with the variable $line
    mas install "$line"
  done <"$input_file"
else
  echo "Not on mac"
fi
