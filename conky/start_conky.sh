#!/bin/bash

# Kill any running Conky instances
killall conky

# Wait a moment
sleep 1

# Start your existing Conky
conky -c ~/.config/conky/nothing-phone-conky.conf &

# Start the Spotify Conky
conky -c ~/.config/conky/spotify_nothing.conkyrc &
