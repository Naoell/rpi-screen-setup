# Screen off
echo 'standby 0' | cec-client -s -d 1
# End chromium process
pkill chromium
