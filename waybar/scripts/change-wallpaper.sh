#!/usr/bin/env bash

if pgrep -x hyprpaper >/dev/null; then
    hyprctl hyprpaper unload all
    killall hyprpaper
fi

TARGET="$HOME/Pictures/Wallpaper"
WALLPAPER=$(find "$TARGET" -type f -iregex '.*\.\(jpg\|jpeg\|png\|webp\)' | shuf -n 1)

CONFIG_PATH="$HOME/.config/hypr/hyprpaper.conf"
echo "preload = $WALLPAPER" > "$CONFIG_PATH"

# Dynamically add a line for each connected monitor
for MON in $(hyprctl monitors -j | jq -r '.[].name'); do
    echo "wallpaper = $MON, $WALLPAPER" >> "$CONFIG_PATH"
done

echo "splash = off" >> "$CONFIG_PATH"
echo "ipc = off" >> "$CONFIG_PATH"

# Restart hyprpaper
hyprpaper &

