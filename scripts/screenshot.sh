#!/usr/bin/env bash

# Dependencies
dependencies=("slurp" "grim" "convert" "wl-copy" "wl-paste" "swappy" "dunstify")
for dep in "${dependencies[@]}"; do
    command -v "$dep" &> /dev/null || {
        dunstify -u critical -t 5000 "Missing dependency: $dep"; exit 1
    }
done

# Prompt user and capture region with slurp
screenshot="$(slurp)"
status=$?
if [ $status -ne 0 ]; then
    # Slurp was canceled (e.g. Esc pressed) or errored
    exit 0
fi

# Process the screenshot: pipe through grim, convert, and copy
grim -g "$screenshot" - | convert - -shave 2x2 PNG:- | wl-copy

# Notify success
dunstify -t 3000 -u low -a screenshot "Screenshot copied to clipboard"

# Launch swappy for annotation
wl-paste | swappy -f -

