#alias vim="ANTHROPIC_API_KEY=$(cat ~/secrets/anthropic-token) nvim"
set -gx LDFLAGS -L/opt/homebrew/opt/curl/lib
set -gx CPPFLAGS -I/opt/homebrew/opt/curl/include
set -gx PKG_CONFIG_PATH /opt/homebrew/opt/curl/lib/pkgconfig

alias vim="source ~/secrets/nvim.env && nvim"
#alias vim="DEEPSEEK_API_KEY=$(cat ~/secrets/deepseek-token) ANTHROPIC_API_KEY=$(cat ~/secrets/anthropic-token) nvim"
function neovide
    set -x ANTHROPIC_API_KEY (cat ~/secrets/anthropic-token)
    command neovide --frame buttonless --title-hidden
end
alias template="template.sh"
alias ld="lazydocker"
abbr ssh_pub "cat ~/.ssh/id_rsa.pub | pbcopy"
export EDITOR=nvim
export XDG_CONFIG_HOME="$HOME/.config"
alias gu=gitui
alias lg=lazygit
alias ls="eza --icons"
alias code=code-insiders
alias lzd='lazydocker'
export RUSTC_WRAPPER=sccache
alias tmux='tmux -u'
alias backup="~/terminal-config/backup/backup.sh"
alias my_gcc="gcc -Werror -Wfloat-equal -Wextra -Wundef -std=c18 -g -Os -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv "
alias pedantic_gcc="gcc Werror -Wfloat-equal -Wextra -Wall -Wundef -std=c11 -g -Os  -funsigned-char -fsanitize=address -fsanitize=undefined -ftrapv -fno-omit-frame-pointer -ansi -pedantic"
abbr my_g++ "g++ -c -O2 -Wall -Wextra -pedantic-errors -Wold-style-cast -std=c++11 -Werror"
alias ly "lazygit -ucd ~/.local/share/yadm/lazygit -w ~ -g ~/.local/share/yadm/repo.git"

abbr - "cd -"
abbr md "mv ~/Downloads/"

abbr tn "tmux new -s (pwd | sed 's/.*\///g')"
