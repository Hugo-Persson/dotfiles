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

function set_tmux_theme

    set -Ux TMUX_THEME "$(getTmuxTheme)"
end
function gum
    # Define Catppuccin theme colors
    if [ "$(isDarkMode)" -eq 1 ]
        # Catppuccin Mocha colors
        set -x GUM_INPUT_CURSOR_FOREGROUND "#cba6f7" # Mauve
        set -x GUM_INPUT_PROMPT_FOREGROUND "#89b4fa" # Blue
        set -x GUM_INPUT_TEXT_FOREGROUND "#cdd6f4" # Text
        set -x GUM_INPUT_PLACEHOLDER_FOREGROUND "#a6adc8" # Overlay1

        set -x GUM_CHOOSE_CURSOR_FOREGROUND "#cba6f7" # Mauve
        set -x GUM_CHOOSE_SELECTED_FOREGROUND "#89b4fa" # Blue
        set -x GUM_CHOOSE_UNSELECTED_FOREGROUND "#cdd6f4" # Text

        set -x GUM_SPIN_SPINNER_FOREGROUND "#cba6f7" # Mauve
        set -x GUM_SPIN_TITLE_FOREGROUND "#cdd6f4" # Text

        set -x GUM_FILTER_INDICATOR_FOREGROUND "#cba6f7" # Mauve
        set -x GUM_FILTER_TEXT_FOREGROUND "#cdd6f4" # Text
        set -x GUM_FILTER_MATCH_FOREGROUND "#89b4fa" # Blue

        set -x GUM_CONFIRM_PROMPT_FOREGROUND "#f9e2af" # Yellow
        set -x GUM_CONFIRM_SELECTED_FOREGROUND "#a6e3a1" # Green
        set -x GUM_CONFIRM_UNSELECTED_FOREGROUND "#f38ba8" # Red

        # Log colors for dark theme (Catppuccin Mocha)
        set GUM_LOG_ERROR_FOREGROUND "#cdd6f4" # Text
        set GUM_LOG_ERROR_BACKGROUND "#f38ba8" # Red
        set GUM_LOG_WARN_FOREGROUND "#313244" # Surface0
        set GUM_LOG_WARN_BACKGROUND "#f9e2af" # Yellow
        set GUM_LOG_INFO_FOREGROUND "#cdd6f4" # Text
        set GUM_LOG_INFO_BACKGROUND "#89b4fa" # Blue
        set GUM_LOG_DEBUG_FOREGROUND "#cdd6f4" # Text
        set GUM_LOG_DEBUG_BACKGROUND "#cba6f7" # Mauve
        set GUM_LOG_TRACE_FOREGROUND "#cdd6f4" # Text
        set GUM_LOG_TRACE_BACKGROUND "#74c7ec" # Sapphire

    else
        # Catppuccin Latte colors
        set -x GUM_INPUT_CURSOR_FOREGROUND "#8839ef" # Mauve
        set -x GUM_INPUT_PROMPT_FOREGROUND "#1e66f5" # Blue
        set -x GUM_INPUT_TEXT_FOREGROUND "#4c4f69" # Text
        set -x GUM_INPUT_PLACEHOLDER_FOREGROUND "#9ca0b0" # Overlay1

        set -x GUM_CHOOSE_CURSOR_FOREGROUND "#8839ef" # Mauve
        set -x GUM_CHOOSE_SELECTED_FOREGROUND "#1e66f5" # Blue
        set -x GUM_CHOOSE_UNSELECTED_FOREGROUND "#4c4f69" # Text

        set -x GUM_SPIN_SPINNER_FOREGROUND "#8839ef" # Mauve
        set -x GUM_SPIN_TITLE_FOREGROUND "#4c4f69" # Text

        set -x GUM_FILTER_INDICATOR_FOREGROUND "#8839ef" # Mauve
        set -x GUM_FILTER_TEXT_FOREGROUND "#4c4f69" # Text
        set -x GUM_FILTER_MATCH_FOREGROUND "#1e66f5" # Blue

        set -x GUM_CONFIRM_PROMPT_FOREGROUND "#df8e1d" # Yellow
        set -x GUM_CONFIRM_SELECTED_FOREGROUND "#40a02b" # Green
        set -x GUM_CONFIRM_UNSELECTED_FOREGROUND "#d20f39" # Red

        # Log colors for light theme (Catppuccin Latte)
        set GUM_LOG_ERROR_FOREGROUND "#EFF1F5" # BASE
        set GUM_LOG_ERROR_BACKGROUND "#D20F39" # RED
        set GUM_LOG_WARN_FOREGROUND "#4C4F69" # TEXT
        set GUM_LOG_WARN_BACKGROUND "#DF8E1D" # YELLOW
        set GUM_LOG_INFO_FOREGROUND "#EFF1F5" # BASE
        set GUM_LOG_INFO_BACKGROUND "#1E66F5" # BLUE
        set GUM_LOG_DEBUG_FOREGROUND "#EFF1F5" # BASE
        set GUM_LOG_DEBUG_BACKGROUND "#8839EF" # MAUVE
        set GUM_LOG_TRACE_FOREGROUND "#EFF1F5" # BASE
        set GUM_LOG_TRACE_BACKGROUND #209FB5" # SAPPHIRE

    end

    # Check if the command is 'gum log' and process level argument
    if test (count $argv) -ge 1; and test $argv[1] = log
        set level info # Default level

        # Parse arguments to find the level
        set i 1
        while test $i -lt (count $argv)
            if test $argv[$i] = --level; and test (math $i + 1) -le (count $argv)
                set level $argv[(math $i + 1)]
                break
            end
            set i (math $i + 1)
        end

        # Set colors based on log level using switch statement
        switch $level
            case error
                set -x GUM_LOG_LEVEL_FOREGROUND $GUM_LOG_ERROR_FOREGROUND
                set -x GUM_LOG_LEVEL_BACKGROUND $GUM_LOG_ERROR_BACKGROUND
            case warn
                set -x GUM_LOG_LEVEL_FOREGROUND $GUM_LOG_WARN_FOREGROUND
                set -x GUM_LOG_LEVEL_BACKGROUND "$GUM_LOG_WARN_BACKGROUND"
            case info
                set -x GUM_LOG_LEVEL_FOREGROUND $GUM_LOG_INFO_FOREGROUND
                set -x GUM_LOG_LEVEL_BACKGROUND $GUM_LOG_INFO_BACKGROUND
            case debug
                set -x GUM_LOG_LEVEL_FOREGROUND $GUM_LOG_DEBUG_FOREGROUND
                set -x GUM_LOG_LEVEL_BACKGROUND $GUM_LOG_DEBUG_BACKGROUND
            case trace
                set -x GUM_LOG_LEVEL_FOREGROUND $GUM_LOG_TRACE_FOREGROUND
                set -x GUM_LOG_LEVEL_BACKGROUND $GUM_LOG_TRACE_BACKGROUND
        end
    end

    # Run the actual gum command with the environment variables set
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

function evalTmuxTheme
    echo "source $HOME/.config/tmux/catppuccin-$(getTmuxTheme).conf" >~/.config/tmux/tmux.conf.theme
end

if [ "$(isDarkMode)" -eq 1 ]
    git config --global delta.features "line-numbers decorations catppuccin-mocha"
    export AICHAT_LIGHT_THEME=false

else
    git config --global delta.features "line-numbers decorations catppuccin-latte"
    export AICHAT_LIGHT_THEME=true
end

evalTmuxTheme
