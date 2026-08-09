#!/usr/bin/env sh
dark="rose-pine-moon"
light="rose-pine-dawn"

host=$(hostname)
case "$host" in
desk)
  cursor_size=48
  text_scaling=1.5
  ;;
s145)
  cursor_size=36
  text_scaling=1.0
  ;;
*)
  cursor_size=32
  text_scaling=1.0
  ;;
esac

current=$(gsettings get org.gnome.desktop.interface gtk-theme | tr -d "'")
if [ "$current" = "$dark" ]; then
  theme="$light"
  cursor="BreezeX-RosePine"
  scheme="prefer-light"
  mode="Light"
else
  theme="$dark"
  cursor="BreezeX-RosePineDawn"
  scheme="prefer-dark"
  mode="Dark"
fi

gsettings set org.gnome.desktop.interface gtk-theme "$theme"
gsettings set org.gnome.desktop.interface cursor-theme "$cursor"
gsettings set org.gnome.desktop.interface cursor-size "$cursor_size"
gsettings set org.gnome.desktop.interface color-scheme "$scheme"
gsettings set org.gnome.desktop.interface text-scaling-factor "$text_scaling"

sed -i "s/^Xcursor.theme:.*/Xcursor.theme: $cursor/" "$HOME/.Xresources"
xrdb -merge "$HOME/.Xresources"
notify-send "$mode mode"
