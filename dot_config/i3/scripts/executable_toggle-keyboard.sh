#!/bin/bash

STATE_FILE="/tmp/keyboard_disabled"
DEVICE_NAME="AT Translated Set 2 keyboard"

KEYBOARD_ID=$(xinput list | grep -i "translated set 2" | grep -o 'id=[0-9]*' | cut -d= -f2)

if [[ -z "$KEYBOARD_ID" ]]; then
  notify-send "Keyboard Toggle" "Device '$DEVICE_NAME' not found"
  exit 1
fi

if [[ -f "$STATE_FILE" ]]; then
  rm "$STATE_FILE"
  xinput enable "$KEYBOARD_ID"
  notify-send "Keyboard enabled"
else
  touch "$STATE_FILE"
  xinput disable "$KEYBOARD_ID"
  notify-send "Keyboard disabled"
fi
