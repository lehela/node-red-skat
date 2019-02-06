#!/bin/bash
mysqldump -uskatapp -pdossene --events --routines  skatliste > /home/$USER/.node-red-skatliste/mysqldump/skatliste-$(date +"%Y%m%d").sql
tar -czvf /home/$USER/Documents/node-red-skat.tgz /home/$USER/.node-red-skatliste
rsync -azv --delete /home/$USER/Documents/ goo1sg:/media/archive/computers/goo12sg/
find /home/$USER/Documents/ -type f -mtime +7 -exec rm {} \;
find /home/$USER/.node-red-skatliste/mysqldump/ -type f -mtime +7 -exec rm {} \;

