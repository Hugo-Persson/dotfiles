function cwa --description "Attach to git worktree and work on issue with claude code"
    # Get worktree list and let user select with fzf
    # Show full output in fzf for context, but we'll extract the path column
    set -l selected (wtp list | fzf-tmux -p 55%,60% \
        --border-label ' wtp ' \
        --prompt '⚡  ' \
        --header 'Select a worktree to attach' \
        --no-sort)

    # If user cancelled (ESC), exit gracefully
    if test -z "$selected"
        return 0
    end

    # Extract the branch name (second column) from the selected line
    set -l branch_name (echo $selected | awk '{print $2}')

    # Get the actual worktree path using wtp cd
    set -l worktree_path (wtp cd $branch_name)

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
