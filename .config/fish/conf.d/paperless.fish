# Function to select a file from current directory using fzf and upload to paperless
function fil
    source ~/secrets/paperless-ngx
    set selected (find . -type f -not -path "*/\.*" 2>/dev/null | fzf --height=40% --reverse --prompt="📄 Select file to upload: ")

    if test -n "$selected"
        echo "📤 Uploading $selected to paperless..."
        paperless-cli upload "$selected"
    else
        echo "❌ No file selected"
    end
end

function fild
    source ~/secrets/paperless-ngx
    set selected (find ~/Downloads -type f 2>/dev/null | fzf --height=40% --reverse --prompt="📄 Select file to upload: ")

    if test -n "$selected"
        echo "📤 Uploading $selected to paperless..."
        paperless-cli upload "$selected"
    else
        echo "❌ No file selected"
    end
end
