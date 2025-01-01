
if test (uname) = Linux
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
    eval "$(/opt/homebrew/bin/brew shellenv)"
end


source ~/.config/fish/aliases.fish
zoxide init fish | source
starship init fish | source
fzf --fish | source

# pnpm
set -gx PNPM_HOME /Users/hugo/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
