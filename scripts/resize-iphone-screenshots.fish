#!/usr/bin/env fish

# iPhone screenshot target sizes
set -g TARGETS "1242x2688" "2688x1242" "1284x2778" "2778x1284"

function show_help
    echo "Usage: resize-iphone-screenshots.fish <image1> [image2] ..."
    echo ""
    echo "Resizes images to the closest iPhone screenshot dimensions:"
    echo "  - 1242 × 2688px (portrait)"
    echo "  - 2688 × 1242px (landscape)"
    echo "  - 1284 × 2778px (portrait)"
    echo "  - 2778 × 1284px (landscape)"
    echo ""
    echo "Requires ImageMagick to be installed."
end

function get_closest_target -a width height
    set -l min_distance 999999999
    set -l best_target ""

    for target in $TARGETS
        set -l tw (string split "x" $target)[1]
        set -l th (string split "x" $target)[2]

        # Calculate squared distance (avoid sqrt, use integers)
        set -l dw (math "$tw - $width")
        set -l dh (math "$th - $height")
        set -l distance (math "$dw * $dw + $dh * $dh")

        if test $distance -lt $min_distance
            set min_distance $distance
            set best_target $target
        end
    end

    echo $best_target
end

# Check for arguments
if test (count $argv) -eq 0
    show_help
    exit 1
end

# Check for ImageMagick
if not command -q magick
    echo "Error: ImageMagick is not installed."
    echo "Install it with: brew install imagemagick"
    exit 1
end

# Process each file
for file in $argv
    if not test -f $file
        echo "Skipping: $file (not a file)"
        continue
    end

    # Get current dimensions
    set -l dimensions (magick identify -format "%wx%h" $file 2>/dev/null)
    if test -z "$dimensions"
        echo "Skipping: $file (could not read dimensions)"
        continue
    end

    set -l width (string split "x" $dimensions)[1]
    set -l height (string split "x" $dimensions)[2]

    # Find closest target
    set -l target (get_closest_target $width $height)
    set -l tw (string split "x" $target)[1]
    set -l th (string split "x" $target)[2]

    echo "Resizing: $file ($dimensions → $target)"

    # Resize and remove alpha channel (overwrites original)
    magick $file -resize {$tw}x{$th}! -background white -alpha remove -alpha off $file
end

echo "Done."
