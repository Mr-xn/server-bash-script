#!/bin/bash

# monitor used CPU 
# powered by mrxn
# blog: https://mrxn.net/ 
# please use bash command  run  this script like this bash freecpu.sh

#def & get the .X1-lock cpu% and pid
cpu=$(top -b -n1 | grep ".X1-lock" | head -1 | awk '{print $9}')  
pid=$(top -b -n1 | grep ".X1-lock" | head -1 | awk '{print $1}') 
#%cpu
result=${cpu/.*}
#Get date
date=`date +%Y-%m-%d`
#Get time
time=`date +%H:%M:%S`
#log
log=".X1-lock with pid:"
#free cpu
#sum=`expr 100 - $result`
#kill if  X1-lock exists 
if [[ $result -ge 10 ]];then
    kill -9 $pid;echo "$date $time $log $pid was killed" >> /root/freeCpulog
else
    echo "$date $time no need to kill" >> /root/freeCpulog
fi
# if [[ $sum -lt 10 ]] ; then
# kill -9 $pid;echo "$date $time $log $pid was killed" >> /root/freeCpulog
# else
#     echo "$date $time no need kill" >> /root/freeCpulog
# fi
