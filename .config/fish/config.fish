if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Source all files in secrets/ directory (like conf.d/ but for sensitive config)
for f in $__fish_config_dir/secrets/*.fish
    source $f
end

export PATH="$PATH:$HOME/.local/bin"
export DYLD_LIBRARY_PATH=/opt/homebrew/lib

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.A
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Added by Antigravity
fish_add_path /Users/hugo/.antigravity/antigravity/bin
tv init fish | source # Add to config.fish

# pnpm
set -gx PNPM_HOME "/Users/hugo/Library/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
