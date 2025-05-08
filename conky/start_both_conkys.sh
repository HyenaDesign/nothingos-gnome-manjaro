#!/bin/bash

# Kill any running Conky instances
killall conky

# Wait a moment
sleep 1

# Start the existing Nothing Phone Conky
conky -c /home/username/.config/conky/nothing-phone-conky.conf -d

# Start the new Spotify Conky
conky -c /home/username/.config/conky/spotify_nothing.conkyrc -d
