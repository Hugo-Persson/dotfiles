# Utility function to move files from ~/Downloads to a specified directory using fzf
function md
    set selected (find ~/Downloads -type f 2>/dev/null | fzf --height=40% --reverse --prompt="📁 Pick file to move: ")

    if test -n "$selected"
        commandline -r "mv \"$selected\" "
        commandline -f repaint
    else
        echo "❌ No file selected"
    end
end
