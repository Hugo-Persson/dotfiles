function md

    set selected (fselect name from ~/Downloads depth 1 ORDER BY modified DESC | fzf --height=40% --reverse --prompt="📁 Pick file to move: ")

    if test -n "$selected"
        set path "$HOME/Downloads/$selected"
        echo "Moving file: $path"
        commandline -r "mv \"$path\" ."
        commandline -f repaint
    else
        echo "❌ No file selected"
    end
end
