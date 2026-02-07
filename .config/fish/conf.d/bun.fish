function bun
    command bun $argv

    # Check if this is a global add/remove operation
    if contains -- -g $argv; or contains -- --global $argv
        switch $argv[1]
            case add install
                echo "Running post-install dump..."
                ~/dotfile-management/sync/dump-bun.fish
            case remove uninstall
                echo "Running post-uninstall dump..."
                ~/dotfile-management/sync/dump-bun.fish
        end
    end
end
