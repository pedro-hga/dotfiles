#!/bin/bash

if dunstctl is-paused | grep -q true; then
  dunstctl set-paused false
  notify-send "🔔 Notifications Resumed"
else
  notify-send "🔕 Notifications Paused"
  sleep 2
  dunstctl set-paused true
fi
