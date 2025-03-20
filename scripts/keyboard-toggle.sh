#!/bin/bash

# Get the current layout
current_layout=$(setxkbmap -query | awk '/layout:/ {print $2}')

# Toggle between US and GB
if [ "$current_layout" = "us" ]; then
    setxkbmap -layout br -model pc105
else
    setxkbmap -layout us -model pc104
fi
echo $current_layout
