#!/bin/bash

# lock.sh
# Sets pixelized screenshot as lock screen background image

# generate background image
background='/tmp/screen.png'
grim $background
convert $background -scale 10% -scale 1000% $background

# lock screen
swaylock -i $background

# remove background image file once done using it
rm $background

