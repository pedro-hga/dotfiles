#!/bin/sh

workspace=$(printf '%s\n' \
  '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' |
  rofi -dmenu -i -p 'Workspace')

[ -z "$workspace" ] && exit 0

app=$(rofi -show drun \
  -matching fuzzy \
  -no-show-match \
  -drun-display-format '{name}' \
  -p 'Application')

[ -z "$app" ] && exit 0

i3-msg "workspace number $workspace; exec --no-startup-id $app"
