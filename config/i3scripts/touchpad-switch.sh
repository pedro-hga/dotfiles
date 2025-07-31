#!/bin/bash

DEVICE_ID=$(xinput list | grep -iE '(touchpad|synaptics)' | head -1 | grep -o 'id=[0-9]*' | cut -d= -f2)

if [ -n "$DEVICE_ID" ]; then
  CURRENT=$(xinput list-props "$DEVICE_ID" | grep "libinput Tapping Enabled (" | grep -o '[01]$')

  if [ "$CURRENT" = "1" ]; then
    xinput set-prop "$DEVICE_ID" "libinput Tapping Enabled" 0
  else
    xinput set-prop "$DEVICE_ID" "libinput Tapping Enabled" 1
  fi
else
  echo "No touchpad found"
fi
