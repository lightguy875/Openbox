#!/bin/bash
##brightness level

##changing black light level
status=`light`
if [ "$1" = "up" ]; then
	light -A 2.5
elif [ "$1" = "down" ]; then
	light -U 2.5
fi

##killing notification
#(pidof notify-osd 1>/dev/null && killall notify-osd)

##No sound to play

##Definind new xblacklight level
status_new=`light`

##Defining Icon to send
if [ "$status_new==0.0" ]; then
	ICON="notification-display-brightness-zero"
elif [ "$status_new<33.0" ]; then
	ICON="notification-display-brightness-low"
elif [ "$status_new>66.0" ]; then
	ICON="notification-display-brightness-high"
elif [ "$status_new>33.0" ] && [ "$status_new<66.0" ]; then
	ICON="notification-display-brightness-medium"
fi

##sending notification
notify-send " " -i $ICON -t 5000 -h int:value:$status_new -h string:synchronous:brightness
