function wtp --description 'Wrapper around wtp that deinits submodules before remove'
    if test (count $argv) -ge 2; and test $argv[1] = remove
        set -l name $argv[-1]
        set -l wt_path (git worktree list --porcelain 2>/dev/null \
            | string match -r '^worktree .*' \
            | string replace -r '^worktree ' '' \
            | string match -e "/$name")

        if test -n "$wt_path"; and test -d "$wt_path/.git"
            if git -C "$wt_path" submodule status 2>/dev/null | string match -qr '.'
                echo "Deinitializing submodules in $wt_path..."
                git -C "$wt_path" submodule deinit --all -f
            end
        end
    end

    command wtp $argv
end
