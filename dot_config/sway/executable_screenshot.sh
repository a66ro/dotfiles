#!/bin/sh

case $1 in
screen) grim - | wl-copy && notify-send "SCREEN" "Full" ;;
region) grim -g "$(slurp)" - | wl-copy && notify-send "SCREEN" "Region" ;;
window) grim -g "$(
    swaymsg -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp
)" - | wl-copy && notify-send 'SCREEN' 'Window';;
esac
