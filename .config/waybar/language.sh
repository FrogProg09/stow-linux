#!/bin/bash

layout=$(mmsg get keyboardlayout | jq -r '.layout')
case "$layout" in
  *US*)  echo "US" ;;
  *ussian*) echo "RU" ;;
  *)     echo "$layout" ;;
esac
