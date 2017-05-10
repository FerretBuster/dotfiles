#!/usr/bin/env bash
#exec i3
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	## if not found, launch a new one
	eval `dbus-launch --sh-syntax`
	echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi
xsetroot -cursor_name left_ptr &
setxkbmap gb &
xset fp+ /home/matt/.fonts/ &
xset fp rehash &
screensetup.sh &
exec bspwm
