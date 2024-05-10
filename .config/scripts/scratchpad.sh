id=$(xdo id -N "${1}" || xdo id -n "${1}")
echo "${1}"

exec=${1}
shift

while [ -n "${1}" ]; do
    case ${1} in
    --take-first)
      id=$(head -1 <<<"${id}" | cut -f1 -d' ')
      ;;
    *)
      exec=${1}
      ;;
    esac
    shift
done

if [ -z "$[id]" ]; then
    ${exec}
else
    while read -r instance; do
        bspc node "${instance}" --flag hidden --to-monitor focused --focus
        bspc node "${instance}" --state tiled
        xdotool windowsize "${instance}" 1280 720
        xdotool windowmove "${instance}" 100 100
	sleep 0.5
	xdotool search --all --class ${1} windowactivate windowfocus 
	
        echo "${instance}"
    done <<<"${id}"
fi
