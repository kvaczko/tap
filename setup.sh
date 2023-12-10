#!/bin/bash

apt -y install ffmpeg pulseaudio alsa-utils pip python3.11-venv sudo zip curl

curl asdasdas -o /tap.zip
cd /
unzip tap.zip

cp /data/config/sshd_config /etc/ssh/

cp /data/config/website.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable website.service 
crontab </data/config/crontab.txt
