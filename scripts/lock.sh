#!/bin/bash

# lock.sh
# Customized i3lock using i3lock-color.
# https://github.com/Raymo111/i3lock-color

# sleep briefly before taking screenshot
sleep 0.1

# colors (based i3 config)
TRANSPARENT='#00000000'
BLACK='#000000'
BACKGROUND='#222222'
FOREGROUND='#DDDDDD'
GRAY='#777777'
ACCENT_0='#006F5F'
ACCENT_0_DARK='#114941'
ACCENT_1='#449F4F'
ACCENT_2='#87CF3E'
RED='#EE4444'

# generate background image
background='/tmp/screen.png'
scrot $background
convert $background -scale 10% -scale 1000% $background

# lock screen
i3lock \
--image=$background \
--color=$TRANSPARENT \
--indicator \
--redraw-thread \
--screen=1 \
--clock \
--date-str="%m/%d/%Y" \
--no-modkey-text \
--lock-text="sorry, you're gonna have to wait" \
--lockfailed-text='almost there...' \
\ #--greeter-text="$(fortune -s fortunes | tr '\n' ' ')" \
\
--time-font=Ubuntu \
--time-size=28 \
--time-color=$FOREGROUND \
\
--date-font=Ubuntu \
--date-size=16 \
--date-color=$FOREGROUND \
\
--verif-font=Ubuntu \
--verif-size=24 \
--verif-color=$FOREGROUND \
\
--wrong-font=Ubuntu \
--wrong-size=24 \
--wrong-color=$FOREGROUND \
\
--greeter-font='Ubuntu Bold'\
--greeter-size=24 \
--greeter-color=$FOREGROUND \
--greeteroutline-color=$BLACK \
--greeteroutline-width=1 \
\
--inside-color=$ACCENT_0_DARK \
--insidever-color=$ACCENT_0_DARK \
--insidewrong-color=$ACCENT_0_DARK \
--ring-color=$ACCENT_0 \
--ringver-color=$ACCENT_2 \
--ringwrong-color=$RED \
--keyhl-color=$ACCENT_2 \
--bshl-color=$RED

# remove background image file once done using it
rm $background

