# SANS-ISC-Infocon-LED
SANS Internet Storm Center Infocon Threat Level desktop LED

I try to keep very current with cybersecurity related events, especially increased threat levels...
... but it isn't easy, and I sometimes miss major events either by not having time to listen to the SANS ISC daily or read new alerts.

So, I wanted a visual cue when something major is happening.

This is a simple bash script that does a curl https://isc.sans.edu/infocon.txt and turns on a corresponding LED colour according to the current SANS Internet Storm Center Infocon Threat Level.

*Requires ([wiringPi](http://wiringpi.com/)) to be installed*

Re-used code from agiannit/dshield-led which was based on dstinebaugh/pihole-led project.

To make this update / change the LED, you'll need to run the script at a regular interval (e.g. every hour).  crontab is your friend here.  Else, if you run the script, it will turn on the LED based on the current infocon.txt threat level and never change.
