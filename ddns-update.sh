#!/bin/sh

#device name
device=pppoe-wan
#ip addr
IP=''
#log file
log=/tmp/ddns.log

#check WAN IP Addr
checkip()
{
    if [ ! -f $log ];then
        touch $log
    fi
    IP=`ifconfig $device | grep 'inet addr' | awk -F ':' '{print $2}' | awk '{print $1}'`
    OLD=`awk -F '-' 'END {print $2}' $log`
    if [ "$IP" = "$OLD" ];then
        IP=''
    fi
}

checkip
if [ "$IP" != "" ];then
    #update log file
    echo `date '+%Y/%m/%d %H:%M:%S'`"-$IP" >> $log
    #changeip or dnspod ddns update scripts
    
fi

