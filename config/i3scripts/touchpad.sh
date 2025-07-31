#!/bin/bash

DEVICE_ID=$(xinput list | grep -iE '(touchpad|synaptics)' | head -1 | grep -o 'id=[0-9]*' | cut -d= -f2)

xinput set-prop "$DEVICE_ID" "libinput Natural Scrolling Enabled" 1
xinput set-prop "$DEVICE_ID" "libinput Accel Speed" 0.30
