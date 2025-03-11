#!/bin/bash

# Define the device and property names
DEVICE="Synaptics TM3336-004"
PROP="libinput Tapping Enabled"

# Toggle the tapping property: if enabled (1), disable it (0); otherwise, enable it (1)
if xinput list-props "$DEVICE" | grep -q "Tapping Enabled.*1"; then
  xinput set-prop "$DEVICE" "$PROP" 0
else
  xinput set-prop "$DEVICE" "$PROP" 1
fi
