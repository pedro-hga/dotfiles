#!/bin/bash
if setxkbmap -query | grep -q "layout:.*us"; then
  setxkbmap -layout br
else
  setxkbmap -layout us
fi
polybar-msg hook keyboard 1
