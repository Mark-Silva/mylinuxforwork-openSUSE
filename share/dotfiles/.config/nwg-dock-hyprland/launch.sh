#    ___           __
#   / _ \___  ____/ /__
#  / // / _ \/ __/  '_/
# /____/\___/\__/_/\_\
#

if [ ! -f $HOME/.config/ml4w/settings/dock-disabled ]; then
    nwg-dock-hyprland -i 32 -w 5 -mb 10 -ml 10 -mr 10 -x -c "rofi -show drun"
else
    echo ":: Dock disabled"
fi
