#!/bin/bash
# filepath: /home/username/.config/eww/scripts/get-weather.sh

API_KEY="YOUR_API_KEY_HERE"
CITY="Leuven"

# Fetch weather data from WeatherAPI
response=$(curl -s "http://api.weatherapi.com/v1/current.json?key=${API_KEY}&q=${CITY}&aqi=no")

# Extract temperature and weather description
temp=$(echo "$response" | jq '.current.temp_c' | xargs printf "%.0f") # Temperature in Celsius
desc=$(echo "$response" | jq -r '.current.condition.text') # Weather description

# Output the variables in a format Eww can directly use
echo -e "WEATHER_TEMP=${temp}\nWEATHER_DESC=${desc}"