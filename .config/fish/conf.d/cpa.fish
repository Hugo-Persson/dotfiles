function cpa --description "Copies the realpath of specified file"
    if test (count $argv) -eq 0
        set -l selected (fzf)
        or return 1
        set argv $selected
    end
    realpath $argv[1] | pbcopy
    echo "Copied realpath of '$(realpath $argv[1])' to clipboard."
end
