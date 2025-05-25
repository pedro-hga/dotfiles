#!/bin/bash

DEVICE="DLL0798:00 06CB:7E92 Touchpad"
PROP="libinput Tapping Enabled"

if xinput list-props "$DEVICE" | grep -q "Tapping Enabled.*1"; then
  xinput set-prop "$DEVICE" "$PROP" 0
else
  xinput set-prop "$DEVICE" "$PROP" 1
fi
