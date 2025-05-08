#!/bin/bash

# Create directories
mkdir -p ~/.config/eww/scripts
mkdir -p ~/.config/eww/images

# Copy configuration files
cp eww.yuck ~/.config/eww/
cp eww.scss ~/.config/eww/

# Copy and make scripts executable
cp scripts/* ~/.config/eww/scripts/
chmod +x ~/.config/eww/scripts/*.sh

echo "Configuration files installed to ~/.config/eww/"
echo "To launch the widgets, run: eww open nothing-widgets"
