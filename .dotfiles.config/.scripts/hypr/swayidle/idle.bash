#!/bin/bash

swayidle -w \
        timeout 60 "$HOME/.scripts/hypr/swaylock/lock.bash blackout" \
        resume 'hyprctl dispatch dpms on' \
        timeout 300 "$HOME/.scripts/hypr/swaylock/lock.bash blur" \
        timeout 360 'hyprctl dispatch dpms off' \
        resume 'hyprctl dispatch dpms on' \
        before-sleep "$HOME/.scripts/hypr/swaylock/lock.bash blur"
