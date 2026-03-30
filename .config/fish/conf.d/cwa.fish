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

    # Create session name from the worktree directory basename
    # Replace any dots or special chars with underscores for tmux compatibility
    set -l session_name (basename $worktree_path | string replace -a '.' '_')

    # Check if we're inside tmux
    if set -q TMUX
        # Switch to or create the session
        if tmux has-session -t "$session_name" 2>/dev/null
            tmux switch-client -t "$session_name"
        else
            tmux new-session -d -s "$session_name" -c "$worktree_path"
            tmux switch-client -t "$session_name"
        end
    else
        # Not in tmux, create or attach to session
        if tmux has-session -t "$session_name" 2>/dev/null
            tmux attach-session -t "$session_name"
        else
            tmux new-session -s "$session_name" -c "$worktree_path"
        end
    end
end
