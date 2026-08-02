#!/bin/bash
if [ ! -d "/sys/class/power_supply/BAT0" ]; then
  exit 0
fi
BAT=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)
GREEN="#9ccfd8"
YELLOW="#f6c177"
ORANGE="#ea9a97"
RED="#eb6f92"

if [ "$STATUS" = "Charging" ] || [ "$STATUS" = "Full" ]; then
  echo "%{F$GREEN}󰂄 $BAT%%{F-}"
else
  if [ "$BAT" -ge 90 ]; then
    echo "%{F$GREEN}󰁹 $BAT%%{F-}"
  elif [ "$BAT" -ge 60 ]; then
    echo "%{F$YELLOW}󰁿 $BAT%%{F-}"
  elif [ "$BAT" -ge 40 ]; then
    echo "%{F$ORANGE}󰁽 $BAT%%{F-}"
  elif [ "$BAT" -ge 20 ]; then
    echo "%{F$ORANGE}󰁻 $BAT%%{F-}"
  else
    echo "%{F$RED}󰂃 $BAT%%{F-}"
  fi
fi
