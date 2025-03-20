#!/bin/bash

# Retrieve the current keyboard layout
current_layout=$(setxkbmap -query | awk '/layout:/ {print $2}')

# Toggle between 'de' and 'gb'
if [ "$current_layout" = "de" ]; then
    setxkbmap gb
else
    setxkbmap de
fi
