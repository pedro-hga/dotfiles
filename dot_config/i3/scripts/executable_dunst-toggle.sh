#!/usr/bin/env bash
if [ "$(dunstctl is-paused)" = "true" ]; then
  dunstctl set-paused false
  notify-send "🔔 Notifications Resumed"
else
  dunstctl set-paused true
  notify-send "🔕 Notifications Paused"
fi

polybar-msg action "#dunst.hook.0"
