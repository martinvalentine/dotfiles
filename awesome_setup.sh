#!/bin/bash

FONT_DIR="$HOME/.local/share/fonts"
FA_DIR="$FONT_DIR/fontawesome"

mkdir -p "$FA_DIR"

# If FA_DIR is empty, download and install
if [[ -z "$(ls -A "$FA_DIR" 2>/dev/null)" ]]; then
    echo "⏳ Installing Font Awesome..."

    wget https://use.fontawesome.com/releases/v6.7.2/fontawesome-free-6.7.2-desktop.zip
    unzip fontawesome-free-6.7.2-desktop.zip
    mv fontawesome-free-6.7.2-desktop/otfs/*.otf "$FA_DIR/"
    rm -rf fontawesome-free-6.7.2-desktop*

    wget https://use.fontawesome.com/releases/v5.15.4/fontawesome-free-5.15.4-desktop.zip
    unzip fontawesome-free-5.15.4-desktop.zip
    mv fontawesome-free-5.15.4-desktop/otfs/*.otf "$FA_DIR/"
    rm -rf fontawesome-free-5.15.4-desktop*

    fc-cache -f  # Refresh font cache
    echo "✅ Font Awesome installed!"
else
    echo "✔️ Font Awesome already installed, skipping."
fi

