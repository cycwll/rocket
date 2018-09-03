#!/bin/bash
while read line
do
  str=`echo $line |awk -F '(' '{print $2}' |awk -F ')' '{print $1}' |awk '{print $3}'`
  echo $str 
  FIT=`echo ${str:2:2}`
  if [ $FIT -gt 50 ];
  then
       echo $line |awk -F '(' '{print $1}' | espeak -s 150 -g 18 2>/dev/null
       #echo $line |awk -F '(' '{print $1}' | espeak -s 150 -g 18 2>/dev/null
  fi  
done < /tmp/image.txt
