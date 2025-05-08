#!/bin/bash
cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo "100"
