#!/bin/bash

# Get the window ID of the currently focused window
focused_window=$(xdotool getwindowfocus)

# Get the workspace number where this window is located
workspace=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name')

# If the window belongs to a different workspace, switch to that workspace
i3-msg workspace "$workspace"

# Optionally, bring the window to focus if it isn't already
xdotool windowactivate "$focused_window"
