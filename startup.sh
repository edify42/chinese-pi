#!/bin/bash

echo hello

sleep 20s

NEW_IP=$(hostname -I)

echo "$(date) writting ip to log: $NEW_IP" >> /var/log/startup

sed "s/IP_ADDR/$NEW_IP/g" index-template.html > /home/pi/index.html

chromium-browser $HOME/index.html --start-fullscreen --kiosk --incognito \
--noerrdialogs --disable-translate --no-first-run --fast --fast-start \
--disable-infobars --disable-features=TranslateUI --disk-cache-dir=/dev/null

(while sleep 1800; do xdotool key ctrl+R; done) &
