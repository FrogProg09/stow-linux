#!/bin/bash

layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')
case "$layout" in
  *English*)  echo "US" ;;
  *Russian*) echo "RU" ;;
  *French*) echo "FR" ;;
  *)     echo "$layout" ;;
esac
