#!/bin/bash

scriptDir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
status=$(waydroid status | head -n 1 | sed -e 's/\(Session:[\t\ ]\)//')

if [ "$status" = "RUNNING" ]; then
	notify-send --icon="$scriptDir/waydroidIcon.png" "Spawning full UI"
elif [ "$status" = "STOPPED" ]; then
	waydroid session start &
	waydroid show-full-ui &
	notify-send --icon="$scriptDir/waydroidIcon.png" "Waydroid session has started
Spawning full UI"
fi
