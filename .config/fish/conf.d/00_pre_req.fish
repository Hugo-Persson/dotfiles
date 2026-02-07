# Cache brew shellenv output to avoid repeated calls
if not set -q _brew_shellenv_cached
    if test (uname) = Linux
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    else
        eval "$(/opt/homebrew/bin/brew shellenv)"
    end
    set -g _brew_shellenv_cached 1
end

source ~/.config/fish/aliases.fish

# Keep starship immediate as it's needed for prompt
starship init fish | source

# Remove fzf from here as it's already loaded in fzf.fish
# fzf --fish | source

# pnpm
set -gx PNPM_HOME /Users/hugo/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
