#!/usr/bin/env fish
set -l globals_file ~/dotfile-management/sync/bun-globals.txt

if not test -f $globals_file
    echo "No bun-globals.txt found"
    exit 1
end

for pkg in (cat $globals_file)
    if test -n "$pkg"
        echo "Installing $pkg globally..."
        command bun add -g $pkg
    end
end

echo "Bun global packages synced"
