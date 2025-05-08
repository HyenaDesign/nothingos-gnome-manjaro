#!/bin/bash
# This is a simulation since real-time noise level requires a microphone and audio processing
# In a real implementation, you might use tools like sox or arecord with RMS calculation

# Generate a random number between 40 and 80 for demo purposes
echo $((RANDOM % 40 + 40))
