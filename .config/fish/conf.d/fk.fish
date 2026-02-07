# Lazy load thefuck to speed up shell startup
# Instead of loading it immediately, only load when 'fk' is first used

function fk --description "Lazy-loaded thefuck alias"
    # Load thefuck on first use
    thefuck --alias fk | source
    # Remove this wrapper function so the real fk takes over
    functions -e fk
    # Call the real fk with the original arguments
    fk $argv
end