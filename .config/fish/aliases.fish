#alias vim="ANTHROPIC_API_KEY=$(cat ~/secrets/anthropic-token) nvim"
set -gx LDFLAGS -L/opt/homebrew/opt/curl/lib
set -gx CPPFLAGS -I/opt/homebrew/opt/curl/include
set -gx PKG_CONFIG_PATH /opt/homebrew/opt/curl/lib/pkgconfig

function vim
    set profile (cat ~/profile.txt)
    if test "$profile" = Dev
        source ~/secrets/nvim.env && command nvim
    else
        command vim
    end
end
function nvim
    source ~/secrets/nvim.env && command nvim
end
#alias vim="DEEPSEEK_API_KEY=$(cat ~/secrets/deepseek-token) ANTHROPIC_API_KEY=$(cat ~/secrets/anthropic-token) nvim"
function neovide
    set -x ANTHROPIC_API_KEY (cat ~/secrets/anthropic-token)
    command neovide --frame buttonless --title-hidden
end
alias template="template.sh"
alias ld="lazydocker"
export EDITOR=nvim
export XDG_CONFIG_HOME="$HOME/.config"
alias gu=gitui
alias lg=lazygit

alias ls="eza --icons"
alias l="eza --icons"
alias ls="eza --icons"
alias ll="eza -lg --icons"
alias la="eza -lag --icons"
alias lt="eza -lTg --icons"
alias lt1="eza -lTg --level=1 --icons"
alias lt2="eza -lTg --level=2 --icons"
alias lt3="eza -lTg --level=3 --icons"
alias lta="eza -lTag --icons"
alias lta1="eza -lTag --level=1 --icons"
alias lta2="eza -lTag --level=2 --icons"
alias lta3="eza -lTag --level=3 --icons"

alias code=code-insiders
alias lzd='lazydocker'
export RUSTC_WRAPPER=sccache
alias tmux='tmux -u'
alias backup="~/terminal-config/backup/backup.sh"
alias my_gcc="gcc -Werror -Wfloat-equal -Wextra -Wundef -std=c18 -g -Os -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv "
alias pedantic_gcc="gcc Werror -Wfloat-equal -Wextra -Wall -Wundef -std=c11 -g -Os  -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv -fno-omit-frame-pointer -ansi -pedantic"
alias ly "lazygit -w ~ -g ~/.local/share/yadm/repo.git"
