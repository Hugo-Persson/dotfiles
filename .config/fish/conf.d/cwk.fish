function cwk --description "Setup git worktree and work on issue with claude code"
    if test (count $argv) -lt 1
        echo "Usage: cwk [options...] <branch-name>"
        return 1
    end

    # Branch name is always the last argument
    set branch_name $argv[-1]

    # Get repository name from current directory
    set repo_name (basename (pwd))
    set session_name "$repo_name-$branch_name"

    # Create worktree with wtp
    if test (count $argv) -gt 1
        # Pass all arguments except the last one to wtp add, then the branch name
        eval "wtp add $argv[1..-2] $branch_name"
    else
        wtp add $branch_name
    end
    if test $status -ne 0
        echo "Failed to create worktree"
        return 1
    end

    # Set worktree directory
    # Create tmux session with first window in worktree directory
    tmux new-session -d -s $session_name -c "$worktree_dir" -n claude
    tmux send-keys -t $session_name:claude claude C-m

    # 2. nvim . in worktree directory
    tmux new-window -t $session_name -c "$worktree_dir" -n nvim
    tmux send-keys -t $session_name:nvim nvim C-m

    # 3. Empty shell in worktree directory
    tmux new-window -t $session_name -c "$worktree_dir" -n shell

    # Connect to the session
    sesh connect $session_name
end
