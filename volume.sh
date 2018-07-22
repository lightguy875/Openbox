#!/bin/bash

## sound level
STATUS=`pamixer --get-volume`

## changing sound level
if [ "$1" = "toggle" ]; then
	pamixer -t
elif [ "$1" = "volup" ]; then
	pamixer -u
	pamixer -i 5
elif [ "$1" = "voldown" ]; then
	pamixer -u 
	pamixer -d 5
fi

## playing sound
##play /usr/share/sounds/freedesktop/stereo/bell.oga -q

## killing existing notifications
#(pidof mate-notification-daemon 1>/dev/null && killall mate-notification-daemon)
#mate-notification-daemon
#using lxqt-notificationd killing process is not needed 
## new sound level after change
STATUS_NEW=`pamixer --get-volume`

## sound muted on/off
MUTED=`pamixer --get-mute`

## icon based on volume level
if [ "$STATUS_NEW" -le 33 ]; then
	ICON="notification-audio-volume-low"
elif [ "$STATUS_NEW" -ge 66 ]; then
	ICON="notification-audio-volume-high"
else
	ICON="notification-audio-volume-medium"
fi

if [ "$MUTED" = "true" ]; then
	ICON="notification-audio-volume-muted"
fi

## sending notification
notify-send " " -i $ICON -t 5000 -h int:value:$STATUS_NEW -h string:synchronous:volume
