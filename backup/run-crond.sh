#!/bin/sh

cat /tmp/crontab > /etc/crontabs/root
/usr/sbin/crond -f -L /var/log/cron/cron.log "$@" 
