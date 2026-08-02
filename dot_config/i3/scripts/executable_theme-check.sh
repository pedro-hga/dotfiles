#!/usr/bin/env sh

file="$HOME/.config/gtk-3.0/settings.ini"
dark="rose-pine-moon"
light="rose-pine-dawn"
current=$(grep "^gtk-theme-name=" "$file" | cut -d= -f2)

if [ "$current" = "$dark" ]; then
  mode="dark"
else
  mode="light"
fi

notify-send "it's $mode mode"
