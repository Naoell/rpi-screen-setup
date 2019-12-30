# Editing
To update url, edit screen_on.sh.

## Edit the startup file
`sudo nano /etc/xdg/lxsession/LXDE-pi/autostart`

## Editing scripts
`nano ~/screen_on.sh `
`nano ~/screen_off.sh `

## Editing crontab
`crontab -e`

# Install

## Install Rasbian
Download and "Raspbian Buster with desktop" image and follow install instructions.  
https://www.raspberrypi.org/downloads/raspbian/

This image is clean, so you no longer have to uninstall packages.

## Edit hostname
1. Enter `sudo raspi-config` in a terminal window
2. Select `Advanced Options`
3. Select `Hostname`

## Update all packages
1. `sudo apt update`
2. `sudo apt upgrade -y`

## Install HDMI control package
`sudo apt install cec-utils`

## Hide cursor
1. Install `sudo apt-get install unclutter`
2. Configure `unclutter -idle 0.5 -root &`

## Chromium
Image should contain chromium, if not install it:
`sudo apt install chromium-browser -y`

## Set up SSH
Raspi-config can be used in the terminal:

1. Enter `sudo raspi-config` in a terminal window
2. Select `Interfacing Options`
3. Navigate to and select `SSH`
4. Choose `Yes`
5. Select `Ok`
6. Choose `Finish`

ref: https://www.raspberrypi.org/documentation/remote-access/ssh/

## Set up browser to autostart
1. Add `screen_on.sh` and `screen_off.sh` scripts to homefolder.
2. Edit url in `screen_on.sh`
3. Set up cronjobs `crontab -e`, see repo file
4. Set up autostart `sudo nano /etc/xdg/lxsession/LXDE-pi/autostart`, see repo file

