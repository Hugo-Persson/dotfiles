function spf
    set os (uname -s)

    # Linux
    # if test "$os" = Linux
    #     set -gx SPF_LAST_DIR (string replace -r "^$HOME" "\$HOME" (echo ${XDG_STATE_HOME:-$HOME/.local/state})/superfile/lastdir)
    # end

    # macOS
    if test "$os" = Darwin
        set -gx SPF_LAST_DIR "$HOME/Library/Application Support/superfile/lastdir"
    end

    command spf $argv

    if test -f "$SPF_LAST_DIR"
        source "$SPF_LAST_DIR"
        rm -f -- "$SPF_LAST_DIR" >/dev/null
    end
end
