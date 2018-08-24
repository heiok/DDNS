#!/bin/sh
(echo "From:<sender@mail.com>";
echo "To:<recipient1@mail.com>;<recipient2@mail.com>";
echo "Date: `date '+%a, %d %b %Y %H:%M:%S %z'`";
echo "Subject: OpenWRT Router New IP is $(ip -4 addr show dev pppoe-wan | awk '/inet / {print $2}' | cut -d/ -f1).";
echo "";
#Get current pppoe-wan interface IP
echo `date '+%Y/%m/%d %H:%M:%S'`"-$(ip -4 addr show dev pppoe-wan | awk '/inet / {print $2}' | cut -d/ -f1).";
)|ssmtp recipient1@mail.com recipient2@mail.com
