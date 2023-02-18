systemctl --user import-environment DISPLAY XAUTHORITY
if command -v dbus-update-activation-environment >/dev/null 2>&1; then
	dbus-update-activation-environment DISPLAY XAUTHORITY
fi
rm -rf ~/Downloads/*
xrandr --output HDMI-0 --mode 1920x1080 --rate 240
slstatus &
paperview ~/.config/paperview/background 25 &
dwm
