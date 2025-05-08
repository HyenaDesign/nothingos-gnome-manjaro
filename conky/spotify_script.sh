#!/bin/bash

# Check if Spotify is running
if ! pgrep -x "spotify" > /dev/null; then
    case "$1" in
        "status")
            echo "Not Running"
            ;;
        "position_percent")
            echo "0"
            ;;
        *)
            echo "Spotify not running"
            ;;
    esac
    exit 0
fi

case "$1" in
    "title")
        playerctl -p spotify metadata title 2>/dev/null || echo "Unknown Title"
        ;;
    "artist")
        playerctl -p spotify metadata artist 2>/dev/null || echo "Unknown Artist"
        ;;
    "album")
        playerctl -p spotify metadata album 2>/dev/null || echo "Unknown Album"
        ;;
    "status")
        playerctl -p spotify status 2>/dev/null || echo "Unknown"
        ;;
    "position")
        # Simple position formatting without bc
        position=$(playerctl -p spotify position 2>/dev/null || echo "0")
        position=${position%.*} # Remove decimal part
        minutes=$((position / 60))
        seconds=$((position % 60))
        printf "%d:%02d" $minutes $seconds
        ;;
    "duration")
        # Simple duration formatting without bc
        duration_ms=$(playerctl -p spotify metadata mpris:length 2>/dev/null || echo "0")
        duration=$((duration_ms / 1000000))
        minutes=$((duration / 60))
        seconds=$((duration % 60))
        printf "%d:%02d" $minutes $seconds
        ;;
    "position_percent")
        # Calculate percentage without bc
        position=$(playerctl -p spotify position 2>/dev/null || echo "0")
        position=${position%.*} # Remove decimal part
        
        duration_ms=$(playerctl -p spotify metadata mpris:length 2>/dev/null || echo "1000000")
        duration=$((duration_ms / 1000000))
        
        if [ "$duration" -gt 0 ]; then
            percent=$((position * 100 / duration))
            echo $percent
        else
            echo "0"
        fi
        ;;
    *)
        echo "Usage: $0 {title|artist|album|status|position|duration|position_percent}"
        exit 1
        ;;
esac

exit 0
