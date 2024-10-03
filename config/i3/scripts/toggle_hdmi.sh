#!/bin/bash

HDMI_STATUS=$(xrandr --query | grep "HDMI-0")

if [[ "$HDMI_STATUS" == *"2160x3840"* ]]; then
  xrandr --output DP-0 --primary --mode 3840x2160 --pos 0x0 --rotate normal
else
  xrandr --output DP-0 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output HDMI-0 --mode 3840x2160 --pos 3840x192 --rotate left
fi
