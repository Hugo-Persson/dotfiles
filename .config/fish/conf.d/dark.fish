function getOutputStr
    if [ "$(uname)" = Linux ]
        if test -e /home/hugo/last-ssh-connection-theme
            command cat ~/last-ssh-connection-theme

        else
            echo dark
        end
        return
    end
    set output (defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo 'dark' || echo 'light')
    echo $output

end

function isDarkMode
    # if linux return true 
    set output $(getOutputStr)
    if [ "$output" = dark ]
        echo 1
    else
        echo 0
    end
end

function getTheme
    if [ "$(isDarkMode)" -eq 1 ]
        echo dark
    else
        echo light
    end
end

function getTmuxTheme
    if [ "$(isDarkMode)" -eq 1 ]
        echo mocha
    else
        echo latte
    end
end

function gum
    echo "running gum"
    command gum $argv
end
function ccat
    command cat
end
function cat
    if test (count $argv) -eq 0
        bat $argv
        return 1
    end
    set file $argv[1]
    # If .md we want to use glow 
    if string match -r '.*\.md$' -- $file
        glow $argv
        return 1
    end

    if [ "$(isDarkMode)" -eq 1 ]
        bat --theme 'Catppuccin Mocha' $argv
    else
        bat --theme 'Catppuccin Latte' $argv
    end
end

function getGlowStyle
    if [ "$(isDarkMode)" -eq 1 ]
        echo "~/dotfile-management/glamour-themes/catppuccin-mocha.json"
    else
        echo "~/dotfile-management/glamour-themes/catppuccin-latte.json"
    end
end
# function glow
#     set STYLE "$(getGlowStyle)"
#     command glow -s $(getGlowStyle) $argv
# end

if test (uname) = Linux
    exit 0
end
function evalTmuxTheme
    echo "set -g @catppuccin_flavor \"$(getTmuxTheme)\"" >~/.config/tmux/tmux.conf.theme
end

if [ "$(isDarkMode)" -eq 1 ]
    git config --global delta.features "line-numbers decorations catppuccin-mocha"
else
    git config --global delta.features "line-numbers decorations catppuccin-latte"
end

#set -x TMUX_THEME $(getTmuxTheme)
evalTmuxTheme
