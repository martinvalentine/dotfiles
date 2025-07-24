#!/usr/bin/env bash

TARGET_DIR="${WALLPAPER_DIR:-$HOME/Pictures/Wallpaper}"
CONFIG_PATH="$HOME/.config/hypr/hyprpaper.conf"

TEMP_FILE=$(mktemp)
yazi --chooser-file "$TEMP_FILE" "$TARGET_DIR"

WALLPAPER=$(cat "$TEMP_FILE")
rm "$TEMP_FILE"

if [[ -z "$WALLPAPER" || ! -f "$WALLPAPER" ]]; then
    echo "No wallpaper selected. Exiting."
    exit 0
fi

mkdir -p "$(dirname "$CONFIG_PATH")"

# Create config with preload and wallpaper for all monitors
{
    echo "preload = $WALLPAPER"
    hyprctl monitors -j | jq -r '.[].name' | while read -r MON; do
        echo "wallpaper = $MON,$WALLPAPER"
    done
    echo "splash = off"
    echo "ipc = off"
} > "$CONFIG_PATH"

# Reload Hyprpaper
killall hyprpaper
hyprpaper &

# Send notification
notify-send -a "hyprpaper" "Wallpaper Changed" -i "$WALLPAPER"
echo "Wallpaper set to: $WALLPAPER"

