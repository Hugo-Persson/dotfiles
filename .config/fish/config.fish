if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$PATH:$HOME/.local/bin"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
