#! /bin/bash

exec xautolock -detectsleep 
  -time 2 -locker "i3lock -i ~/code/vimrc/bg.png -t" \
  -notify 30 \
  -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"
