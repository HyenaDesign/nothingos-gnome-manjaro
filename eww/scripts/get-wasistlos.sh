#!/bin/bash
# filepath: ~/.config/eww/scripts/get-wasistlos.sh

# Simulate fetching the latest notification from Wasistlos
# Replace this with the actual command or API call to Wasistlos
notification=$(cat ~/.config/eww/wasistlos-notifications.txt | tail -n 1)

# Output the notification
echo "$notification"