# chinese pi

Displays a simple webpage with a word of the day in chinese on a raspberry pi.

I'm using a Pi v3.

## Pre-configuration

Setup the Pi with WiFi access and SSH access enabled. Once connected, the Pi
should have an IP address which is resolvable via `hostname -I`.

Additionally, the Pi should have access to the internet as it fetches a webpage
with the Word of the Day in the middle of the screen.

The top left corner shows the IP address of the Pi (useful for DHCP networks
with random IP assignment)

## Config changes

The startup script is called by placing the file into `/home/pi/.config/lxsession/LXDE-pi/autostart`
