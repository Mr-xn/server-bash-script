#!/bin/bash

# monitor used memory 
# powered by mrxn
# blog: https://mrxn.net/ 
# please use bash command  run  this script like this bash crontab.sh 
crontab -l > crontab.bak
echo "* * * * * /root/shell/freemem.sh" >> crontab.bak
crontab crontab.bak

/etc/init.d/cron restart