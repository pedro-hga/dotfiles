#!/bin/bash

PIDFILE="/tmp/mouse-jiggle.pid"

start_jiggle() {
  (
    while true; do
      xdotool mousemove_relative 1 0
      sleep 1
      xdotool mousemove_relative -- -1 0
      sleep 60
    done
  ) &
  echo $! >"$PIDFILE"
  notify-send "Mouse enabled"
}

stop_jiggle() {
  kill "$(cat "$PIDFILE")" 2>/dev/null
  rm -f "$PIDFILE"
  notify-send "Mouse disabled"
}

if [ -f "$PIDFILE" ] && kill -0 "$(cat "$PIDFILE")" 2>/dev/null; then
  stop_jiggle
else
  start_jiggle
fi
