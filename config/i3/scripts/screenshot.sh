#!/bin/bash

# Define screenshot directory
SCREENSHOT_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SCREENSHOT_DIR"

# Take a screenshot using scrot
scrot "$SCREENSHOT_DIR/screenshot_%Y-%m-%d_%H-%M-%S.png" -e 'xclip -selection clipboard -t image/png -i $f'

# Get the latest screenshot file
SCREENSHOT_FILE=$(ls -t "$SCREENSHOT_DIR" | head -n 1)
FULL_PATH="$SCREENSHOT_DIR/$SCREENSHOT_FILE"

# Use zenity to choose an action
CHOICE=$(zenity --list --radiolist --title="Screenshot Action" --text="Choose an action:" --column="Select" --column="Action" TRUE "View" FALSE "Annotate" FALSE "Cancel")

case "$CHOICE" in
View)
	feh "$FULL_PATH"
	;;
Annotate)
	flameshot gui -p "$SCREENSHOT_DIR"
	;;
*)
	echo "No action selected."
	;;
esac
