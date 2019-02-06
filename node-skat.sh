#!/bin/bash
node-red --port 1881 --settings /home/pi/.node-red-skat/settings.js --title Skat --userDir /home/pi/.node-red-skat/ &
sudo netstat -tulpn|grep 1881
