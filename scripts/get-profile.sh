#!/usr/bin/env bash
if [ -f ~/profile.txt ]; then
  cat ~/profile.txt
else
  echo "Error: ~/profile.txt does not exist"
  set-profile.sh
fi
