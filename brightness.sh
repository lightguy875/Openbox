#!/bin/bash
##brightness level

##changing black light level
status=`xbacklight -get`
if [ "$1" = "up" ]; then
	xbacklight -inc 5
elif [ "$1" = "down" ]; then
	xbacklight -dec 5
fi

##killing notification
(pidof notify-osd 1>/dev/null && killall notify-osd)

##No sound to play

##Defining Icon to send
ICON="notification-display-brightness-full"
##Definind new xblacklight level
status_new=`xbacklight -get`
##sending notification
notify-send " " -i $ICON -t 5000 -h int:value:$status_new -h string:synchronous:brightness
