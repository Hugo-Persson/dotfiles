#!/usr/bin/env bash
for i in {0..255}; do
  printf "\x1b[48;5;%sm%-10s\x1b[0m %s\n" "$i" " " "$i"
done
