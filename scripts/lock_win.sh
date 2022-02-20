#!/bin/bash

# lock_win.sh
# Customized i3lock using i3lock-color made to look like a Windows 7 desktop.
# https://github.com/Raymo111/i3lock-color

# select background image
background="$HOME/Pictures/windows_7_desktop.png"

# lock screen with a dummy Windows desktop
i3lock \
--no-unlock-indicator \
--pointer=win \
--image=$background

