#!/usr/bin/env fish
# Sesh-style picker for herdr: existing workspaces + zoxide dirs.
# Uses television (tv) as the fuzzy finder.

set -l selection (tv \
    --source-command "~/.config/herdr/scripts/space-picker-source.fish" \
    --input-prompt 'spaces❯ ' \
    --no-sort)

test -z "$selection"; and exit 0

# Entries look like:  "[space:<id>] <label>"  or  "[zoxide] <path>"
if set -l matches (string match -r '^\[space:([^\]]+)\] ' -- $selection)
    herdr workspace focus $matches[2]
else if string match -q '[zoxide] *' -- $selection
    set -l path (string replace '[zoxide] ' '' -- $selection)
    herdr workspace create --cwd $path --focus
end
