#Setting on OpenWRT router crontab  
#/etc/crontabs 
#*/5 * * * * /etc/oscam/ddns-update.sh >/dev/null 2>&1  
#Use ssmtp sendmail per hour  
#*/60 * * * * /etc/ssmtp/sendmail.sh >/dev/null 2>&1 
