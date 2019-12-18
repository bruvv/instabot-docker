#!/bin/sh
echo "Starting instabot for username: $IG_USER"
echo "Session file: /app/session/$IG_USER.session"
echo "First update"
python -m pip install instabot.py --upgrade
python -m instabot_py -c /app/config/instabot.config.yml --login "$IG_USER" --password "$IG_PASSWORD" --sqlite-path "/app/db" --session-file "/app/session/$IG_USER.session" --ignore-updates
