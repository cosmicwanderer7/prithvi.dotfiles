#!/bin/bash

if pidof wlsunset; then
  killall -9 wlsunset
else
  wlsunset -t 5000 -l 17.7 -L 74.1
fi
