#!/bin/sh
{echo "From:<saminside1@163.com>";
echo "To:<dgcatv@yeah.net>";
echo "Date: `date '+%a, %d %b %Y %H:%M:%S %z'`";
echo "Subject: OpenWRT Router New IP!";
echo "";
#Get current pppoe-wan interface IP
echo "The new IP is $(ip -4 addr show dev pppoe-wan | awk '/inet / {print $2}' | cut -d/ -f1).";
}|ssmtp dgcatv@yeah.net
