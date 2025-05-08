#!/bin/bash

# Get percentage
percent=$(~/.config/conky/spotify_script.sh position_percent)

# Default to 0 if empty or not a number
if ! [[ "$percent" =~ ^[0-9]+$ ]]; then
    percent=0
fi

# Create dot matrix progress bar
total_dots=10
filled_dots=$((percent * total_dots / 100))

result=""
for ((i=1; i<=total_dots; i++)); do
    if [ $i -le $filled_dots ]; then
        result="$result● "
    else
        result="$result○ "
    fi
done

echo "$result"
