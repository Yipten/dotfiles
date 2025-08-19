#!/bin/bash

# i3power.sh
# Script to call for various power options.

lock() {
	$HOME/scripts/lock.sh
}

case $1 in
	lock)
		lock
		;;
	logout)
		swaymsg exit
		;;
	suspend)
		systemctl suspend-then-hibernate
		;;
	hibernate)
		systemctl hibernate
		;;
	reboot)
		systemctl reboot
		;;
	shutdown)
		systemctl poweroff
		;;
esac

