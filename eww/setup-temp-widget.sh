#!/bin/bash

# Create directories
mkdir -p ~/.config/eww/scripts

# Copy files
cp eww.css ~/.config/eww/
cp eww.yuck ~/.config/eww/
cp scripts/get-temp.sh ~/.config/eww/scripts/

# Make script executable
chmod +x ~/.config/eww/scripts/get-temp.sh

echo "Files installed to ~/.config/eww/"
echo "To launch the widget, run: eww -c ~/.config/eww open nothing-temp"
