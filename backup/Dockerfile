FROM alpine:3.9 as base

RUN apk update; \
    apk add mariadb-client tzdata; \
    ln -s /usr/share/zoneinfo/Asia/Singapore /etc/localtime;

COPY backup/crontab /tmp/crontab
COPY backup/run-crond.sh /run-crond.sh
COPY backup/skatliste-backup.sh /skatliste-backup.sh

RUN chmod -v +x /skatliste-backup.sh; \
    chmod -v +x /run-crond.sh; \
    mkdir -p /var/log/cron && touch /var/log/cron/cron.log;

CMD [ "/run-crond.sh" ]
