#!/bin/bash

xautolock -time 5 -locker "i3lock -i /home/rudenoise/code/vimrc/bg.png -t" -notify 30 -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'" &
