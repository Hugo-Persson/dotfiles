function cwa --description "Attach to git worktree and work on issue with claude code"
    # Select a worktree using television (outputs the full path via wtp channel)
    set -l worktree_path (tv wtp)

    # If user cancelled (ESC), exit gracefully
    if test -z "$worktree_path"
        return 0
    end

    # Verify the path exists
    if not test -d "$worktree_path"
        echo "Error: Worktree path does not exist: $worktree_path" >&2
        return 1
    end

    # Create workspace label from the worktree directory basename
    set -l workspace_label (basename $worktree_path | string replace -a '.' '_')

    # Look for an existing herdr workspace with this label
    set -l existing_id (herdr workspace list | python3 -c "import sys, json; ws = json.load(sys.stdin).get('result', {}).get('workspaces', []); print(next((str(w['number']) for w in ws if w.get('label') == '$workspace_label'), ''))")

    if test -n "$existing_id"
        herdr workspace focus "$existing_id"
    else
        herdr workspace create --cwd "$worktree_path" --label "$workspace_label"
    end
end
