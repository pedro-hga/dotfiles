#!/bin/bash
# Script to display date in i3blocks with clickable calendar pop-up
# Uses yad for a pretty dialog with Catppuccin Frappe colors

# Display current date in your preferred format
date '+%a %d.%m.%Y'

# Catppuccin Frappe colors
BG="#303446"
FG="#C6D0F5"
ACCENT="#89B4FA"

# Handle clicks
case $BLOCK_BUTTON in
1) # Left click - show calendar popup
  yad --calendar \
    --width=400 \
    --height=400 \
    --no-buttons \
    --title="Calendar" \
    --window-icon=calendar \
    --borders=20 \
    --color-bg="$BG" \
    --color-fg="$FG" \
    --fontname="Monospace 18" 2>/dev/null &
  ;;
esac
