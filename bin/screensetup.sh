#!/usr/bin/env bash
builtin=LVDS1	
external=DP1

if xrandr | grep "$external disconnected"; then
	xrandr --output "$external" --off --output "$builtin" --auto
else
	xrandr --output "$builtin" --off --output "$external" --auto
fi
