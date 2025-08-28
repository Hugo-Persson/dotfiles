function cwk --description "Setup git worktree and work on issue with claude code"
    if test (count $argv) -ne 1
        echo "Usage: cwk <branch-name>"
        return 1
    end

    set branch_name $argv[1]
    
    # Get repository name from current directory
    set repo_name (basename (pwd))
    set session_name "$repo_name-$branch_name"
    
    # Create worktree with wtp
    wtp add --branch $branch_name
    if test $status -ne 0
        echo "Failed to create worktree"
        return 1
    end
    
    # Create tmux session with first window
    tmux new-session -d -s $session_name -n "claude"
    tmux send-keys -t $session_name:claude "claude" C-m
    
    # 2. nvim .
    tmux new-window -t $session_name -n "nvim"
    tmux send-keys -t $session_name:nvim "nvim" C-m
    
    # 3. Empty shell
    tmux new-window -t $session_name -n "shell"
    
    # Connect to the session
    sesh connect $session_name
end