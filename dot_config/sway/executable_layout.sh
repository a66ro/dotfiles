#!/bin/sh

focuslayout() {
    swaymsg gaps inner all set 0
    swaymsg gaps outer all set 2
    swaymsg smart_borders all set on
    swaymsg smart_gaps all set inverse_outer
    notify-send "Layout" "Layout changed to FOCUS"
}
normlayout() {
    swaymsg gaps inner all set 6
    swaymsg gaps outer all set 0
    swaymsg smart_borders all set on
    swaymsg smart_gaps all off
    notify-send "Layout" "Layout changed to NORMAL"
}

case $1 in
    focus) focuslayout;; 
    normal) normlayout;; 
esac
