#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

fswebcam -r 1280x720 --no-banner /home/pi/webcam/$DATE.jpg
#fswebcam -r 420x180 --no-banner /home/pi/webcam/$DATE.jpg
