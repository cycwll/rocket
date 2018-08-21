#!/bin/bash
#read only first line
#cat /tmp/image.txt|head -n 1|awk -F '(' '{print $1}' | espeak  2>/dev/null

#read aloud all 
while read line
do
  echo $line |awk -F '(' '{print $1}' | espeak  2>/dev/null
done < /tmp/image.txt
