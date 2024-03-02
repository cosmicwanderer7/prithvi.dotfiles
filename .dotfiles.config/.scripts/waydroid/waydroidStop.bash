#!/bin/bash

scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
status=$(waydroid status | head -n 1 | sed -e 's/\(Session:[\t\ ]\)//')

if [ "$status" = "STOPPED" ]; then
	notify-send --icon="$scriptDir/waydroidIcon.png" "Waydroid session has stopped already!"
elif [ "$status" = "RUNNING" ]; then
	waydroid session stop &
	notify-send --icon="$scriptDir/waydroidIcon.png" "Waydroid session has stopped"
fi
