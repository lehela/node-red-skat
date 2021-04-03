#/bin/sh

# Copy the Skatliste flows
cp /data/flows.json /backup/flows.json

# Dump the database
mysqldump -hskatliste-mariadb -uskatapp -pskatapp --events --routines skatliste > /backup/skatliste.sql

# Tar it up into a timestamped zip
tar -czf /backup/node-red-skat-$(date +"%Y%m%d%H%M").tgz /backup/flows.json /backup/skatliste.sql

# Remove tar zip files older than 60 days
find /backup/ -type f -mtime +60 -exec rm {} \;

# Cleanup the temp files
rm /backup/flows.json /backup/skatliste.sql

