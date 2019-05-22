# Screen on
echo "on 0" | cec-client -s > /dev/null
# Wait for screen to turn on
sleep 5
# Change to the active input of the Pi
echo "as" | cec-client -s > /dev/null

# Fire up chromium
# Display no errors
# Display in kiosk mode
# Disown process
DISPLAY=:0 chromium-browser --noerrdialogs --disable-infobars --kiosk https://dyplink.com & disown
