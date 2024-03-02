#!/bin/bash

scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
status=$(waydroid status | head -n 1 | sed -e 's/\(Session:[\t\ ]\)//')

if [ "$status" = "RUNNING" ]; then
	notify-send --icon="$scriptDir/waydroidIcon.png" "Waydroid session is already running!"
elif [ "$status" = "STOPPED" ]; then
	waydroid session start &
	notify-send --icon="$scriptDir/waydroidIcon.png" "Waydroid session has started"
fi
