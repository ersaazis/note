#!/bin/bash
nice -n 13 Xvfb -retro -render -screen 0 600x650x16 :99 &
rm /root/.mozilla -r
cp -r /root/data /root/.mozilla
nice -n 13 x11vnc -display :99 &
nice -n 13 firefox-esr --display :99 -p 1
nice -n 13 firefox-esr --display :99 -p 1&
sleep 30 && \
nice -n 13 firefox-esr --new-tab "https://www.youtube.com/watch?v=owjfqbVHpgw&list=PLzy1GtZA-b9jd6dQUvilLgmK2WhplAq4Z&index=1&t=0s" --display :99 && \
nice -n 13 firefox-esr --new-tab "https://www.youtube.com/watch?v=owjfqbVHpgw&list=PLzy1GtZA-b9jd6dQUvilLgmK2WhplAq4Z&index=1&t=0s" --display :99 && \
nice -n 13 firefox-esr --new-tab "https://www.youtube.com/watch?v=owjfqbVHpgw&list=PLzy1GtZA-b9jd6dQUvilLgmK2WhplAq4Z&index=1&t=0s" --display :99 && \
nice -n 13 firefox-esr --new-tab "https://www.youtube.com/watch?v=owjfqbVHpgw&list=PLzy1GtZA-b9jd6dQUvilLgmK2WhplAq4Z&index=1&t=0s" --display :99 && \
nice -n 13 firefox-esr --new-tab "https://www.youtube.com/watch?v=owjfqbVHpgw&list=PLzy1GtZA-b9jd6dQUvilLgmK2WhplAq4Z&index=1&t=0s" --display :99 &
tail -f /dev/null
