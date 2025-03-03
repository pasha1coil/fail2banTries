#!/bin/bash
FILE_TO_WATCH="/etc/nginx/fail2ban_redirect.conf"
while true; do
    inotifywait -e modify $FILE_TO_WATCH
    nginx -t && nginx -s reload
done
