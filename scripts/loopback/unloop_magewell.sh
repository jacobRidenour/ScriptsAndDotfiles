#!/bin/bash

# Pro Capture HDMI: alsa_input.pci-0000_07_00.0.stereo-fallback
source=$(pactl list short sources | grep -i "alsa_input.pci-0000_07_00.0.stereo-fallback" | awk '{print $2}')

module_id=$(pactl list short modules | grep "source=$source" | awk '{print $1}')

if [ -n "$module_id" ]; then
  pactl unload-module "$module_id"
  echo "Loopback for source $source with ID $module_id removed."
else
  echo "No loopback module found for source $source."
fi

