#!/bin/sh
#device name
device=eth0
#log file
log=/home/heiok/ddns.log
    if [ ! -f $log ];then
	touch $log
    fi
#check WAN IP Addr
    NewIP=`ifconfig $device | grep 'inet addr' | awk -F ':' '{print $2}' | awk '{print $1}'`
    OldIP=`awk -F '-' 'END {print $2}' $log`
    if [ "$NewIP" != "$OldIP" ];then
	#update log file
    	echo `date '+%Y/%m/%d %H:%M:%S'`"-$NewIP" >> $log
    	#changeip or dnspod ddns update scripts

    fi
