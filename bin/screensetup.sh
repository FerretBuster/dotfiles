#!/usr/bin/env bash
builtin=LVDS-1	
external=DP-1

if xrandr | grep "$external disconnected"; then
	xrandr --output "$external" --off --output "$builtin" --auto
else
	xrandr --output "$builtin" --off --output "$external" --auto
fi
