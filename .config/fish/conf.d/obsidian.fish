function selectObsidianAction
    set ACTION $(printf "Daily note\nCreate zettel" | fzf-tmux -p 55%,60% \
        --no-sort --border-label ' Obsidian ' --prompt '⚡')
    if test $ACTION='Daily note'
        sesh connect "Obsidian 💎"
    end
end

export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"
