
function brew
    # Execute the original brew command
    command brew $argv

    # Check the subcommand
    switch $argv[1]
        case install
            echo "Running post-install command..."
            # Add your shell commands here, e.g.:
            ~/dotfile-management/sync/dump-brew.sh
        case uninstall
            echo "Running post-uninstall command..."
            ~/dotfile-management/sync/dump-brew.sh
        case "*"
            # Do nothing for other subcommands
    end
end
