#!/bin/bash

lock="swaylock --daemonize --show-failed-attempts --grace 0 --grace-no-mouse --grace-no-touch --ignore-empty-password"

swaylock_pid=$(pgrep -x "swaylock")

if [[ $1 == "blackout" ]] && [ -n "$swaylock_pid" ]; then
  hyprctl dispatch dpms off
fi
if [ -z "$swaylock_pid" ]; then
  if [[ $1 == "noBlur" ]]; then
    $lock
  elif [[ $1 == "blur" ]]; then
    $lock --screenshots
  fi
fi
