current_brightness=$(cat /sys/class/backlight/amdgpu_bl0/brightness)

new_brightness=$(expr $current_brightness + $1)
if [[ $new_brightness -lt 0 ]]; then
	new_brightness=0
fi

max_brightness=$(cat /sys/class/backlight/amdgpu_bl0/max_brightness)

if [[ $new_brightness -gt $max_brightness ]]; then
	new_brightness=$max_brightness
fi

echo $new_brightness > /sys/class/backlight/amdgpu_bl0/brightness

