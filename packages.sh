#!/bin/bash

echo Installing packages.

sudo zypper install -y --no-recommends libqt5-qtwayland libqt5-qtwayland-devel python313-pipx libqt5-qtsvg-devel libqt5-qtsvg-devel mozilla-fira-fonts fira-code-fonts NetworkManager-applet hyprland hypridle waybar nwg-dock-hyprland hyprlock hyprpaper SwayNotificationCenter gum figlet hyprland-qtutils rofi-wayland hyprland-protocols-devel xdg-desktop-portal xdg-desktop-portal-hyprland nautilus dunst stow ffmpegthumbnailer eza kitty libnotify-tools python313-pycairo-devel python313-gobject-devel python313-screeninfo python313-gobject nwg-look wlogout xdg-desktop-portal-gtk qt5ct qt6ct sddm-qt6 qt6-qt5compat-devel qt6-qt5compat-imports slurp pinta google-noto-fonts tumbler ffmpegthumbnailer symbols-only-nerd-fonts hyprpicker fontawesome-fonts fontawesome-fonts-web google-droid-fonts texlive-fira-fonts hyprpicker fzf grim python313-grimoirelab-toolkit cliphist wl-clipboard-zsh-completion hyprpicker pipewire wireplumber git-core zsh systemd-zram-service fastfetch mpd mpv lf zathura zathura-plugin-cb zathura-plugin-ps xdg-user-dirs xwayland xwayland-devel xwayland-run breeze6 gtk2-theming-engine-adwaita adwaita-qt5 adwaita-qt6 kitty-terminfo upower gnome-text-editor playerctl brightnessctl pavucontrol pavucontrol-qt qalculate-gtk xdg-desktop-portal-wlr xdg-desktop-portal-devel gnome-icon-theme gnome-icon-theme-extras gnome-icon-theme-symbolic blueman nwg-displays evolution polkit-gnome ImageMagick power-profiles-daemon

echo installing x11 pattern 

sudo zypper in -y --no-recommends -t pattern x11

echo Making XDG dirs 

xdg-user-dirs-update

echo installing the latest ml4w dots and running fedora installer. IGNORE THE ERRORS!

bash <(curl -s https://raw.githubusercontent.com/mylinuxforwork/dotfiles/main/setup-fedora.sh)

echo doing other things..

cp modules.json $HOME/.config/waybar
cp custom.conf $HOME/.config/kitty

./sddm.sh
