#!/bin/bash
xinput --set-button-map "Logitech USB Trackball" 1 10 3 4 5 6 7 2
xinput set-prop "Logitech USB Trackball" "Evdev Wheel Emulation" 1
xinput set-prop "Logitech USB Trackball" "Evdev Wheel Emulation Button" 8
