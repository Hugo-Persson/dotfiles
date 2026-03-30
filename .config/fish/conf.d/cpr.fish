function cpr --description "Copies the relative path of a file selected via fzf"
    set -l selected (fzf)
    or return 1
    echo -n $selected | pbcopy
    echo "Copied relative path '$selected' to clipboard."
end
