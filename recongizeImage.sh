#!/bin/bash
cd /home/pi/webcam/models-master/tutorials/image/imagenet
IMAGENAME=`ls -lt /home/pi/webcam|sed -n "2,1p"|awk '{print $9}'`
python classify_image.py --image_file=/home/pi/webcam/$IMAGENAME > /tmp/image.txt && cat /tmp/image.txt | head -n 1|awk -F ',' '{print $1}' |awk '{print $1}' >/tmp/object.txt
cat /tmp/object.txt
