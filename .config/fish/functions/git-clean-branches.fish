function git-clean-branches
    git fetch origin

    git branch --merged origin/main \
        | grep -vE '^\*|main$' \
        | xargs -r git branch -d

    for branch in (git branch --format="%(refname:short)" | grep -v '^main$')
        git merge-base --is-ancestor $branch origin/main
        if test $status -ne 0
            read -P "Delete unmerged branch '$branch'? [y/N] " ans
            if string match -qr '^[Yy]' $ans
                git branch -D $branch
            end
        end
    end
end
