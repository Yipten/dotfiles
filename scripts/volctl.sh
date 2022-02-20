#!/bin/bash

# volctl.sh
# Changes the current audio output's volume and displays a dunst notification
# showing the current volume level.

getVolume() {
	vol=$(amixer -D pulse get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1)
	echo $vol
}

getIcon() {
	if [ $1 -ge 67 ]
	then
		echo 'audio-volume-high'
	elif [ $1 -ge 33 ]
	then
		echo 'audio-volume-medium'
	elif [ $1 -ge 1 ]
	then
		echo 'audio-volume-low'
	elif [ $1 -eq 0 ]
	then
		echo 'audio-volume-muted'
	fi
}

# arbitrary ID
id='991049'

# get current volume and mute status
vol=$(getVolume)

# change volume according to input
case $1 in
	up)
		amixer -D pulse set Master on > /dev/null
		amixer -D pulse set Master $2%+ > /dev/null
		;;
	down)
		amixer -D pulse set Master on > /dev/null
		amixer -D pulse set Master $2%- > /dev/null
		;;
	#mute)
	#	amixer -D pulse set Master toggle > /dev/null
	#	;;
	mute)
		amixer -D pulse set Master 0% > /dev/null
esac

# get new volume and mute status
newVol=$(getVolume)

# show notification indicating new volume level
dunstify -u low -i "$(getIcon $newVol)" -r $id -h int:value:$newVol "Volume: $newVol%"

