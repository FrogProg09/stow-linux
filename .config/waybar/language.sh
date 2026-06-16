#!/bin/bash

layout=$(mmsg get keyboardlayout | jq -r '.layout')
case "$layout" in
  *US*)  echo "US" ;;
  *Russian*) echo "RU" ;;
  *French*) echo "FR" ;;
  *)     echo "$layout" ;;
esac
