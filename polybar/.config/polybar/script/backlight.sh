#!/usr/bin/env zsh

current_light="/sys/class/backlight/intel_backlight/brightness"
max_light="/sys/class/backlight/intel_backlight/max_brightness"
passWord=$(pass show archLinux/password)
echo "$passWord" | sudo -S chmod 666 $current_light $max_light
current=$(cat $current_light)
max=$(cat $max_light)


percent=$( echo "$(( $current * 100. / $max))" | awk'{printf "%.2f", $1}')
echo -e "$percent\n"
