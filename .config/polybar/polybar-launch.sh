#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch primary bar
# polybar top-primary 2>&1 | tee -a /tmp/polybar-primary.log & disown

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar top-primary 2>&1 | tee -a /tmp/polybar-primary.log & disown &
  done
else
  polybar --reload example &
fi