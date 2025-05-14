function md
    set selected (find ~/Downloads -type f -print0 2>/dev/null | xargs -0 ls -lt | awk '{print $6, $7, $8, "  ", $9}' | fzf --height=40% --reverse --prompt="📁 Pick file to move: " | awk '{for(i=4;i<=NF;i++) printf "%s ", $i; print ""}' | xargs)

    if test -n "$selected"
        commandline -r "mv \"$selected\" "
        commandline -f repaint
    else
        echo "❌ No file selected"
    end
end
