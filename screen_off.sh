# Screen off
echo "standby 0" | cec-client -s
# End chromium process
pkill chromium
