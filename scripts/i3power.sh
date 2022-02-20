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
		i3-msg exit
		;;
	suspend)
		systemctl suspend
		;;
	hibernate)
		sudo systemctl hibernate
		;;
	reboot)
		systemctl reboot
		;;
	shutdown)
		systemctl poweroff
		;;
esac

