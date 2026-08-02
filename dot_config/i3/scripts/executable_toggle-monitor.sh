#!/bin/sh

if xrandr | grep -q "^HDMI-0 connected"; then

  if xrandr | grep "^HDMI-0 connected [0-9]" >/dev/null; then
    xrandr --output HDMI-0 --off \
      --output DP-0 --primary --pos 0x0
  else
    xrandr \
      --output DP-0 --primary --mode 3840x2160 --pos 0x1028 \
      --output HDMI-0 --mode 3840x2160 --rotate left --pos 3840x0
  fi

fi
