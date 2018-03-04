#!/bin/bash

# monitor used memory 
# powered by mrxn
# blog: https://mrxn.net/ 
# please use bash command  run  this script like this bash freemem.sh

#Get the total memory size
total=`free -m | awk 'NR==2' | awk '{print $2}'`
#Get the user to use the memory size //它这个是剩余内存
# userd=`free -m | awk 'NR==2' | awk '{print $3}'`
#buffers/cache free memory size //缓存内存
userd=`free -m | awk 'NR==3' | awk '{print $4}'`
#Get date
date=`date +%Y-%m-%d`
#Get time
time=`date +%H:%M:%S`

#Total memory minus user usage memory
sum=`expr $total - $userd`

#To determine whether the memory is less than or equal to 400M less than the implementation of the script, does not meet the exit
if [ $sum -gt 900 ] ; then
#Release the page cache
sync && echo 1 > /proc/sys/vm/drop_caches
#Release directory entries and index nodes
sync && echo 2 > /proc/sys/vm/drop_caches
#Release all caches
sync && echo 3 > /proc/sys/vm/drop_caches
echo "$date $time Remaining $sum M Cache cleanup succeeded" >> /root/freeMemlog
else
echo "$date $time Remaining $sum M There is no need to clean up the cache" >> /root/freeMemlog
fi
