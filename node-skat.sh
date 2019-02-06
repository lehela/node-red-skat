#!/bin/bash
node-red --port 1881 --settings /home/pi/.node-red-skatliste/settings.js --title Skatliste --userDir /home/pi/.node-red-skatliste/ &
sudo netstat -tulpn|grep 1881
