#!/bin/bash

DP=$(brightnessctl -l 2>/dev/null | awk -F"'" '/Device .*backlight/ {print $2}' | head -n1)

if [ -n "$DP" ]; then
  VALUE=$(brightnessctl -d "$DP" -m | awk -F, '{print $4}')
else
  VALUE="---"
fi

printf "󱍖  %s\n" "$VALUE"
