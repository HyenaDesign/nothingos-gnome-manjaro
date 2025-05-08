-- Simple function to get Spotify status
function conky_spotify_status()
    local f = io.popen("~/.config/conky/spotify_script.sh status")
    local s = f:read("*a") or ""
    f:close()
    s = string.gsub(s, "^%s+", "")
    s = string.gsub(s, "%s+$", "")
    
    if s == "Playing" then
        return "● PLAYING"
    elseif s == "Paused" then
        return "❙❙ PAUSED"
    else
        return "■ STOPPED"
    end
end

-- Simple function to create progress dots
function conky_spotify_progress_dots()
    local f = io.popen("~/.config/conky/spotify_script.sh position_percent")
    local s = f:read("*a") or "0"
    f:close()
    s = string.gsub(s, "^%s+", "")
    s = string.gsub(s, "%s+$", "")
    
    local percent = tonumber(s) or 0
    local total_dots = 10
    local filled_dots = math.floor((percent * total_dots) / 100)
    
    local result = ""
    for i = 1, total_dots do
        if i <= filled_dots then
            result = result .. "● "
        else
            result = result .. "○ "
        end
    end
    
    return result
end
