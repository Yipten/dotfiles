#!/bin/bash

# brightnessctl.sh
# Uses dunst notifications to show indicator when changing screen brightness.

getBrightness() {
	((b=$(echo $(xbacklight -get) | awk '{print int($1)}')+1))
	echo $b
}

# arbitrary ID to enable replacing the previous notification
dunstMsgID=991050

# change brightness according to input
case $1 in
	up)
		xbacklight -inc 5	
		;;
	down)
		xbacklight -dec 5
		;;
	upsmall)
		xbacklight -inc 1
		;;
	downsmall)
		xbacklight -dec 1
		;;
esac

# get new brightness
brightness=$(getBrightness)

# display notification
dunstify -u low -i weather-clear -r $dunstMsgID -h int:value:$brightness "Brightness: $brightness%"

