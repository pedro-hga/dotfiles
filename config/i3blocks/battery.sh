#!/bin/bash

# Check if battery exists
if [ ! -d "/sys/class/power_supply/BAT0" ]; then
  exit 0
fi

BAT=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

# Gruvbox color codes
GREEN="#98971a"
YELLOW="#d79921"
ORANGE="#d65d0e"
RED="#cc241d"

if [ "$STATUS" = "Charging" ]; then
  echo -e "🔌 $BAT%"
  echo "$BAT%"
  echo "#458588" # Gruvbox blue for charging
else
  if [ "$BAT" -ge 80 ]; then
    echo -e "🔋 $BAT%"
    echo "$BAT%"
    echo "$GREEN"
  elif [ "$BAT" -ge 40 ]; then
    echo -e "🔋 $BAT%"
    echo "$BAT%"
    echo "$YELLOW"
  elif [ "$BAT" -ge 20 ]; then
    echo -e "🔋 $BAT%"
    echo "$BAT%"
    echo "$ORANGE"
  else
    echo -e "⚠️ $BAT%"
    echo "$BAT%"
    echo "$RED"
  fi
fi
