#!/bin/bash

# Get the names of connected outputs
intern=$(xrandr | grep " connected" | awk 'NR==1 {print $1}')
extern=$(xrandr | grep " connected" | awk 'NR==2 {print $1}')

# Check how many screens are connected
connected=$(xrandr | grep " connected" | wc -l)

# Move extern monitor to the left
xrandr --output "$extern" --mode 1920x1080 --left-of "$intern"

# Define sleep duration
SLEEP_DURATION=1.5

# Function to launch applications in a specific workspace
launch_app() {
    local workspace=$1
    local output=$2
    local app_command=$3

    # Set workspace to output
    i3-msg "workspace $workspace; move workspace to output $output"
    eval "$app_command &"
    sleep $SLEEP_DURATION
}

if [[ $connected -gt 1 ]]; then
    # More than one screen is connected
    echo "Multiple screens detected: using external monitor."
else
    # Only one screen is connected (the internal one)
    echo "Single screen detected: using internal monitor."
    extern=intern
fi

launch_app 1 "$extern" "brave-browser --app-id=cfammbeebmjdpoppachopcohfchgjapd"
# open kitty terminal with the last saved tmux session
launch_app 2 "$extern" "kitty --hold -e bash -c "tmux attach-session -t $(tmux list-sessions | tail -n 1 | awk '{print $1}') || tmux new-session""
launch_app 3 "$extern" "brave-browser"
# opem ticktick with app-id

launch_app 9 "$intern" "code"
launch_app 10 "$intern" "flatpak run com.discordapp.Discord"