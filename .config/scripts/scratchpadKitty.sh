id=$(xdo id -N "${1}" || xdo id -n "${1}")
echo "${id}"
if [ -z "${id}" ]; then
    kitty --class "${1}" -o allow_remote_control=yes -o enabled_layouts=all --title "Scratchpad" &
else
    while read -r instance; do
        bspc node "${instance}" --flag hidden --to-monitor focused --focus
        bspc node "${instance}" --state tiled
        xdotool windowsize "${instance}" 1280 720
        xdotool windowmove "${instance}" 100 100

        echo "${instance}"
    done <<<"${id}"
fi
