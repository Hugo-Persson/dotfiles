# Function to select a file from current directory using gum choose and upload to paperless
function fil
    source ~/secrets/paperless-ngx
    set selected (find . -type f -exec sh -c 'printf "%s  %s\n" "$(stat -f "%Sm" -t "%Y-%m-%d %H:%M" "$1")" "$1"' sh {} \; | sort -r | gum choose --no-limit --header  "📄 Select file to upload:" | awk -F '  ' '{print $2}')

    if test -n "$selected"
        for file in $selected
            echo "📤 Uploading $file to paperless..."
            paperless-cli upload "$file"
        end
    else
        echo "❌ No file selected"
    end
end

function fild
    source ~/secrets/paperless-ngx
    set selected (find ~/Downloads -type f -exec sh -c 'printf "%s  %s\n" "$(stat -f "%Sm" -t "%Y-%m-%d %H:%M" "$1")" "$1"' sh {} \; | sort -r | gum choose --no-limit --header "📄 Select file to upload:" | awk -F '  ' '{print $2}')

    if test -n "$selected"
        for file in $selected
            echo "📤 Uploading $file to paperless..."
            paperless-cli upload "$file"
        end
    else
        echo "❌ No file selected"
    end
end