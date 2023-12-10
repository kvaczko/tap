#!/bin/bash

apt -y install ffmpeg pulseaudio alsa-utils pip python3.11-venv sudo zip curl

curl https://github.com/kvaczko/tap/raw/main/tap.zip -o /tap.zip
cd /
unzip tap.zip

chmod +x /data/script/*

cp /data/config/sshd_config /etc/ssh/

cp /data/config/website.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable website.service 
crontab </data/config/crontab.txt
reboot
