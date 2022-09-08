# SANS-ISC-Infocon-LED
SANS Internet Storm Center Infocon Threat Level desktop LED

Simple bash script that does a curl https://isc.sans.edu/infocon.txt and sets a LED according to the current SANS Internet Storm Center Infocon Threat Level

*Requires ([wiringPi](http://wiringpi.com/)) to be installed*

Based on agiannitdstinebaugh/pihole-led project included nearly everything you see here (the base script and the startup script); created a dsheild I just changed the  that is parses, and added two more LEDs -- because who doesn't like blinky lights?


"Just edit the values in the Setting block and include it's location to your /etc/rc.local file.
The startup script will launch a new screen session named "blink" so the screen package is also required to be installed. (It's in your repos most likely)" 

I removed the original attribution URL since it was no longer active.  Attribution and more info: dstinebaugh/pihole-led

I'm not going to re-invent the wheel; here's an excellent tutorial for wiring this all up
http://raspberrypi.powersbrewery.com/project-5-traffic-light/
NOTE: there are really cool Red, Yellow, Green "traffic light" hats with LEDs, resistors and pins for $1.50-$5 that would simplify this for anyone that prefers are more refined look.
https://shop.pimoroni.com/products/pistop-traffic-light-add-on-for-raspberry-pi
http://www.icstation.com/traffic-light-display-module-green-yellow-light-arduino-raspberry-p-13216.html
