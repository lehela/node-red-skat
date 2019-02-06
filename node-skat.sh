#!/bin/bash
node-red --port 1881 --settings /home/$USER/.node-red-skatliste/settings.js --title Skatliste --userDir /home/$USER/.node-red-skatliste/ &
sudo netstat -tulpn|grep 1881
