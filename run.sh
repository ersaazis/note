#!/bin/bash
nice -n 13 Xvfb -retro -render -screen 0 600x650x16 :99 &
nice -n 13 x11vnc -display :99 &
if [ "$PROXY" != "" ]; then export {http,https,ftp}_proxy=${PROXY} ;fi

rm /root/.mozilla -r
cp -r /root/data /root/.mozilla

cd /root
python -m SimpleHTTPServer &

while :
do
pkill firefox-esr

rm /root/.mozilla/firefox/4b2bgj9y.1/session* -r
rm /root/.mozilla/firefox/4b2bgj9y.1/places.sqlite
wget https://youtube.bisnisglobal.com/url/$ID.js -O /root/my.js

nice -n 13 firefox-esr ifconfig.me --display :99 -p 1&
sleep 30 && \
nice -n 13 firefox-esr --new-tab https://youtube.bisnisglobal.com/ref/$ID --display :99 && \
nice -n 13 firefox-esr --new-tab https://youtube.bisnisglobal.com/ref/$ID --display :99 && \
nice -n 13 firefox-esr --new-tab https://youtube.bisnisglobal.com/ref/$ID --display :99 && \
nice -n 13 firefox-esr --new-tab https://youtube.bisnisglobal.com/ref/$ID --display :99 && \
nice -n 13 firefox-esr --new-tab https://youtube.bisnisglobal.com/ref/$ID --display :99 &
sleep 600
pkill firefox-esr
done
