#!/bin/bash

rm -f /etc/nginx/sites-enabled/*;

service rsyslog start;
service cron start;
service nginx start;

while [ true ]; do
    sleep 5;
done
