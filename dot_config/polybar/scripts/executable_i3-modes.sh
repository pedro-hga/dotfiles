#!/usr/bin/env bash

# Wait until i3 IPC socket is available
until i3-msg -t get_version >/dev/null 2>&1; do
  sleep 0.5
done

i3-msg -t subscribe -m '[ "mode" ]' | while read -r line; do
  mode=$(echo "$line" | jq -r '.change // empty')
  if [ -z "$mode" ]; then
    continue
  fi
  if [ "$mode" = "default" ]; then
    echo ""
  else
    echo " $mode "
  fi
done
