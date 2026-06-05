#!/usr/bin/env fish
# Emit picker entries: existing herdr workspaces + zoxide directories.
# Format: "[space:<id>] <label>"  or  "[zoxide] <path>"

herdr workspace list \
    | jq -r '.result.workspaces[] | "[space:\(.workspace_id)] \(.label)"'

zoxide query -l | sed 's|^|[zoxide] |'
