alias vim="ANTHROPIC_API_KEY=$(cat ~/secrets/anthropic-token) nvim"
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
alias ly "lazygit -ucd ~/.local/share/yadm/lazygit -w ~ -g ~/.local/share/yadm/repo.git"

abbr - "cd -"
abbr md "mv ~/Downloads/"

abbr tn "tmux new -s (pwd | sed 's/.*\///g')"
