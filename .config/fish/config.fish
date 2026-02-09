if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$PATH:$HOME/.local/bin"
export DYLD_LIBRARY_PATH=/opt/homebrew/lib

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.A
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# SDKMAN (handled by reitzig/sdkman-for-fish plugin)
set -gx SDKMAN_DIR $HOME/.sdkman
