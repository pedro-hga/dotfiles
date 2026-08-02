#!/usr/bin/env bash
if [ "$(dunstctl is-paused)" = "true" ]; then
  dunstctl set-paused false
else
  dunstctl set-paused true
fi

polybar-msg action "#dunst.hook.0"
