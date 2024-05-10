id=$(xdo id -N "${1}" || xdo id -n "${1}")
echo "${id}"
if [ -z "${id}" ]; then
	firefox --class "${1}" &
else
    while read -r instance; do
        bspc node "${instance}" --flag hidden --to-monitor focused --focus
        bspc node "${instance}" --state tiled
        xdotool windowsize "${instance}" 1280 720
        xdotool windowmove "${instance}" 100 100

        echo "${instance}"
    done <<<"${id}"
fi
