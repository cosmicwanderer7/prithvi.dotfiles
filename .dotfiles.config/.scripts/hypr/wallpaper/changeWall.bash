#!/bin/bash

changeWall() {
  selected_wallpaper="$(find ~/.wallpapers/ -type f | shuf -n 1)"
  swaybg -m fill -i "$selected_wallpaper" &
  echo "$current_day|$selected_wallpaper" > "$record"
}

# File to store the last recorded day and wallpaper
record="$HOME/.scripts/hypr/wallpaper/.record"

# User variables
current_day=$(date +"%Y-%m-%d")
IFS='|' read -r last_recorded_day last_recorded_wallpaper < "$record"

if [ "$current_day" = "$last_recorded_day" ]; then
  # Set wallpaper from the last recorded file
  swaybg -m fill -i "$last_recorded_wallpaper" &
else
  # Change wallpaper and update the last recorded day and wallpaper
  changeWall
fi
