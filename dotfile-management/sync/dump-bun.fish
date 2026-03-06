#!/usr/bin/env fish
set -l source ~/.bun/install/global/package.json
set -l dest ~/dotfile-management/sync/bun-globals.txt

if test -f $source
    jq -r '.dependencies | keys[]' $source > $dest
    echo "Bun globals dumped to $dest"
else
    echo "No global Bun packages found"
end
