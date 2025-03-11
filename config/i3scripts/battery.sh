#!/bin/bash

# Check if the battery directory exists
if [ ! -d "/sys/class/power_supply/BAT0" ]; then
  exit 0
fi

# Read battery capacity and status
BAT=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

# Define colors
GREEN="#a3be8c"
YELLOW="#ebcb8b"
ORANGE="#d08770"
RED="#bf616a"

# Output based on battery status and capacity
if [ "$STATUS" = "Charging" ]; then
  echo -e "$BAT%  "
  echo "$BAT%"
  echo "#8fbcbb"
else
  if [ "$BAT" -ge 90 ]; then
    echo -e " $BAT%"
    echo "$BAT%"
    echo "$GREEN"
  elif [ "$BAT" -ge 80 ]; then
    echo -e " $BAT%"
    echo "$BAT%"
    echo "$GREEN"
  elif [ "$BAT" -ge 60 ]; then
    echo -e " $BAT%"
    echo "$BAT%"
    echo "$YELLOW"
  elif [ "$BAT" -ge 40 ]; then
    echo -e " $BAT%"
    echo "$BAT%"
    echo "$ORANGE"
  elif [ "$BAT" -ge 20 ]; then
    echo -e " $BAT%"
    echo "$BAT%"
    echo "$ORANGE"
  else
    echo -e " $BAT%"
    echo "$BAT%"
    echo "$RED"
  fi
fi
