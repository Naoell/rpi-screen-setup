# Editing
To update url, edit screen_on.sh.

## Edit the startup file
`sudo nano ~/.config/lxsession/LXDE-pi/autostart`

## Editing scripts
`nano ~/screen_on.sh `
`nano ~/screen_off.sh `

## Editing crontab
`crontab -e`

# Install

## Install Rasbian
Download and Rasbian image and follow install instructions.

https://www.raspberrypi.org/downloads/raspbian/

## Uninstall unused packages
1. `sudo apt-get purge wolfram-engine scratch scratch2 nuscratch sonic-pi idle3 -y`
2. `sudo apt-get purge smartsim java-common minecraft-pi libreoffice* -y`
3. `sudo apt-get clean`
4. `sudo apt-get autoremove -y`

## Update all packages
1. `sudo apt-get update`
2. `sudo apt-get upgrade -y`

## Install HDMI control package
`sudo apt-get install cec-client`

## Hide cursor
1. Install `sudo apt-get install unclutter`
2. Configure `unclutter -idle 0.5 -root &`

## Chromium
`sudo apt-get install chromium-browser --yes`

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
4. Set up autostart `sudo nano ~/.config/lxsession/LXDE-pi/autostart`, see repo file

