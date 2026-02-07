#!/usr/bin/env fish

# Claude notification script for Stop/Notification hooks
# This script shows a macOS notification with a link to return to the Claude session using sesh

# Get current tmux session and window
set tmux_session (tmux display-message -p '#S' 2>/dev/null)
set tmux_window (tmux display-message -p '#I' 2>/dev/null)
echo $tmux_session >~/.last-claude-session
echo $tmux_window >~/.last-claude-window

# Set default if not in tmux
if test -z "$tmux_session"
    set tmux_session claude
end

# Create the notification with sesh connect command
terminal-notifier \
    -title "Claude Code" \
    -subtitle "Task completed" \
    -message "$tmux_session" \
    -execute "/Users/hugo/raycast/open-last-claude-code.sh" \
    -sound Glass \
        -appIcon "/Users/hugo/.claude/icon.png"
