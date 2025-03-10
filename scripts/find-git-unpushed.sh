#!/bin/bash

find . -type d -name ".git" -exec sh -c 'cd $(dirname {}); git status --porcelain | grep -q "." && echo "$(pwd) has uncommitted changes"' \;
