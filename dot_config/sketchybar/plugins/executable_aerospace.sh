#!/usr/bin/env bash

focused_workspace=$(aerospace list-workspaces --focused)

if [ "$1" = "$focused_workspace" ]; then
  sketchybar --set $NAME background.drawing=on
else
  sketchybar --set $NAME background.drawing=off
fi
