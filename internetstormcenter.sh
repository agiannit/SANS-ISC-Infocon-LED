#!/bin/bash
###########
### This script is built for the Raspberry Pi wiringPi here:
### http://wiringpi.com/download-and-install/
### Based off code originally created by Daniel Stinebaugh for pihole log's, and modified for SANS ISC infocon.txt threat level.
### Uses wiringpi pin=0, pin=1, pin=2, pin=3, pin=4
### Consult http://wiringpi.com/pins for wiringpi pin to GPIO mapping
### Tested on Raspberry Pi B
###########
### SANS-ISC-Infocon-LED  Author: Anthony Giannitsis
### Original Author:      Daniel Stinebaugh
### Attribution:          dstinebaugh/pihole-led
### Date:                 09/07/2022
### License:            Copyleft. Enjoy!
###########

# Red;
pin0=0
# Orange;
pin1=1
# Yellow;
pin2=2
# Green;
pin3=3
# Blue;
pin4=4

gpio mode $pin0 out
gpio mode $pin1 out
gpio mode $pin2 out
gpio mode $pin3 out
gpio mode $pin4 out

# Defaults the pin to low when starting
gpio write $pin0 0
gpio write $pin1 0
gpio write $pin2 0
gpio write $pin3 0
gpio write $pin4 0

iscthreatlvl=$(curl https://isc.sans.edu/infocon.txt)

## Threat Level Red
   if [[ $iscthreatlvl == "red" ]]; then
       gpio write $pin0 1

## Threat Level Orange
   elif [[ $iscthreatlvl == "orange" ]]; then
       gpio write $pin1 1

## Threat Level Yellow
   elif [[ $iscthreatlvl == "yellow" ]]; then
       gpio write $pin2 1

## Threat Level Green
   elif [[ $iscthreatlvl == "green" ]]; then
       gpio write $pin3 1

## Threat Level Blue (TEST)
   elif [[ $iscthreatlvl == "blue" ]]; then
       gpio write $pin4 1

#   else echo "Nothing to see here"

   fi

#done
