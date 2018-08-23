#!/bin/sh
( echo "From:<saminside1@163.com>”;
echo "To:<dgcatv@yeah.net>”;
echo "";
echo "Subject: OpenWRT Router New IP!”
echo "$1"
echo ""
#read LINE
#while [ -n $LINE ]
#do
# echo $LINE
#read LINE
#done
)|ssmtp -v -f “Heiok.com” -F "www.heiok.com" dgcatv@yeah.net
