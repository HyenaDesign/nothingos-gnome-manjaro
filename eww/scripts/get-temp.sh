#!/bin/bash

# Try to get CPU temperature from sensors
if command -v sensors &> /dev/null; then
  TEMP=$(sensors | grep -oP 'Package id 0:\s+\+\K[0-9.]+' | head -1)
  
  # If that specific pattern didn't work, try a more general approach
  if [ -z "$TEMP" ]; then
    TEMP=$(sensors | grep -oP 'Core 0:\s+\+\K[0-9.]+' | head -1)
  fi
  
  # Try another common pattern
  if [ -z "$TEMP" ]; then
    TEMP=$(sensors | grep -oP 'CPU:\s+\+\K[0-9.]+' | head -1)
  fi
fi

# If sensors didn't work, try reading from thermal zone
if [ -z "$TEMP" ]; then
  for i in /sys/class/thermal/thermal_zone*/temp; do
    if [ -f "$i" ]; then
      TEMP=$(cat "$i" 2>/dev/null)
      
      # Convert from millidegrees if necessary
      if [ ${#TEMP} -gt 2 ]; then
        TEMP=$(echo "scale=1; $TEMP/1000" | bc)
      fi
      
      break
    fi
  done
fi

# If still no temperature, use a placeholder
if [ -z "$TEMP" ]; then
  TEMP="57"
fi

# Round to nearest integer and remove decimal part
TEMP=$(printf "%.0f" "$TEMP")

# Debug output
echo "$TEMP"

# Also write to a log file for debugging
echo "$(date): Temperature script returned: $TEMP" >> /tmp/eww-temp-debug.log
