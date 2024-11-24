#!/bin/bash

# Line In: alsa_input.pci-0000_0f_00.4.analog-stereo
source=$(pactl list short sources | grep -i "alsa_input.pci-0000_0f_00.4.analog-stereo" | awk '{print $2}')
sink=$(pactl get-default-sink)

if [ -n "$source" ] && [ -n "$sink" ]; then
  pactl load-module module-loopback source="$source" sink="$sink"
else
  echo "Error setting up loopback; source was ${source} ; sink was ${sink}"
fi
