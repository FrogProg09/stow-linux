#!/bin/sh
grim -l 0 -g "$(slurp)" - | tee "$HOME/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%m-%S).png" | wl-copy
