set -Ux CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense' # optional

# Lazy load carapace completions
function _carapace_lazy_init
    # Only initialize once
    if not set -q _carapace_initialized
        carapace _carapace | source
        set -g _carapace_initialized 1
    end
end

# Set up a lazy loading trigger - will load on first tab completion attempt
function __fish_complete --on-event fish_complete
    _carapace_lazy_init
    # Remove this event handler after first trigger
    functions -e __fish_complete
end

# Vivid is fast enough to keep immediate
export LS_COLORS=$(vivid generate catppuccin-frappe)