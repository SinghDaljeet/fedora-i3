#!/bin/bash
intern=eDP 
extern=HDMI-A-0

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
   xrandr --output "$extern" --rate 144 
   xrandr --output "$intern" --left-of "$extern"
fi

