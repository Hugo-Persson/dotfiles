function cpa --description "Copies the realpath of specified file"
    if test (count $argv) -ne 1
        echo "Usage: cpa <branch-name>"
        return 1
    end
    realpath $argv[1] | pbcopy
    echo "Copied realpath of '$(realpath $argv[1])' to clipboard."
end
