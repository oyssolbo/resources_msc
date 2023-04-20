#!/bin/bash

sudo systemctl start firmwared.service
sphinx "/opt/parrot-sphinx/usr/share/sphinx/drones/anafi.drone"::firmware="/home/killah/Downloads/anafi-pc.ext2.zip" 
