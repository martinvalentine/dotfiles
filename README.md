<h1 align="center">🫟 Hyprdots: An Awesome Dotfiles</h1>

<div align="center">
<p>
<a href="https://github.com/ad1822/hyprdots/stargazers"><img src="https://img.shields.io/github/stars/ad1822/hyprdots?style=for-the-badge&logo=starship&color=C9CBFF&logoColor=C9CBFF&labelColor=302D41" alt="stars"><a>&nbsp;&nbsp;
<!-- <a href="https://github.com/ad1822/hyprdots/"><img src="https://img.shields.io/github/repo-size/ad1822/hyprdots?style=for-the-badge&logo=hyprland&logoColor=f9e2af&label=Size&labelColor=302D41&color=f9e2af" alt="REPO SIZE"></a>&nbsp;&nbsp; -->
<a href="https://github.com/ad1822/hyprdots/"><img src="https://img.shields.io/github/forks/ad1822/hyprdots?style=for-the-badge&logo=appveyor&logoColor=f9e2af&label=Forks&labelColor=302D41&color=f9e2af" alt="REPO SIZE"></a>&nbsp;&nbsp;
<a href="https://github.com/ad1822/hyprdots/commits/main/"><img src="https://img.shields.io/github/last-commit/ad1822/hyprdots?style=for-the-badge&logo=github&logoColor=eba0ac&label=Last%20Commit&labelColor=302D41&color=eba0ac" alt="Last Commit"></a>&nbsp;&nbsp;
<a href="https://github.com/ad1822/hyprdots/blob/main/LICENSE"><img src="https://img.shields.io/github/license/ad1822/hyprdots?style=for-the-badge&logo=&color=CBA6F7&logoColor=CBA6F7&labelColor=302D41" alt="LICENSE"></a>&nbsp;&nbsp;
</p>
</div>

<!-- <p align="center">
  <a href="https://github.com/zemmsoares/awesome-rices">
    <img src="https://raw.githubusercontent.com/zemmsoares/awesome-rices/main/assets/awesome-rice-badge.svg" alt="awesome-rice-badge">
  </a>
</p> -->

<!-- ##### Home: -->

![home](Assets/main.png)

<!-- ##### K9s and Cava: -->

<!-- ##### Yazi and Btop: -->

![btop](Assets/btop.png)

<!-- ##### Powermenu: -->

![powermenu](Assets/powermenu.png)

<!-- ##### GoLang Showcase : -->

![powermenu](Assets/yazi.png)

<!-- ##### Launcher: -->

![launcher](Assets/launcher.png)

## Wallpaper

[Wallpaper](https://drive.google.com/drive/folders/1Eog40yvrTshjDLVIETVncBKcDsvPLMIX?usp=sharing)

---

## 🚀 Quick Installation Guide

### 📦 Programs Included

- **Window Manager**: Hyprland (Tiling)
- **Status Bar**: Waybar
- **Notification Manager**: Dunst
- **Browser**: Zen
- **Color Picker**: hyprpicker
- **Wallpaper Utility**: hyprpaper
- **Screenshot Utility**: grim + slurp
- **App Launcher**: Rofi
- **Terminal Emulator**: kitty
- **Shell**: Zsh
- **Media Controls**: playerctl
- **Power Management**: acpi
- **Brightness Control**: brightnessctl
- **Audio Management**: pamixer, PulseAudio
- **Network Management**: NetworkManager (nmcli), iwd (iNet Wireless Daemon)

> ℹ️ **For more detailed guidance**, check out [this](./Resources.md)

---

## 🛠️ Installation Steps

1. **Clone the repository** to your home directory like `~` or `/home/username` :

   ```sh
   git clone https://github.com/ad1822/hyprdots ~/hyprdots
   ```

2. **Navigate to the cloned directory**:

   ```sh
   cd ~/hyprdots
   ```

3. **Run the setup script**:

   ```sh
   sudo bash ./setup.sh
   ```

4. **GTK Theme Setup**:

- [Catppuccin Gtk theme](https://github.com/catppuccin/gtk/releases)

- I use [`ngw-look`](https://github.com/nwg-piotr/nwg-look) to configure GTK themes and styles.

---

## ⚠️ Important Notice (Read Before Running Setup)

> ### **Warning:**
>
> This setup script will **move your existing config files** (e.g., for Waybar, Kitty, Hyprland, etc.) to a backup folder at `~/.config_backup`. Then, it will copy the new configs from this repo into your `~/.config` directory.
>
> ### What this means:
>
> - Your current setup will be **replaced**.
> - If you have customizations you care about, **back them up manually** or review the script before running.
> - Fonts and themes will be installed system-wide in your `~/.local/share/fonts` directory.

---
