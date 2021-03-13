#!/usr/bin/env zsh

battery_capacity=$(cat /sys/class/power_supply/axp20x-battery/capacity)
battery_status=$(cat /sys/class/power_supply/axp20x-battery/status)

battery_icons=("_____" "■____" "■.___" "■■___" "■■.__" "■■■__" "■■■._" "■■■■_" "■■■■." "■■■■■")

declare -i level
level="$battery_capacity/10"

if [[ "$battery_status" == "Charging" ]]; then
  message=''
else
  message=''
fi

#notify-send -t 4000 "$message ${battery_icons[$level]} $battery_capacity %"
echo "${battery_icons[$level]} $message"
