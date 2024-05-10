#!/bin/sh

function main() {
    #DEFAULT_SOURCE=$(pw-record --list-targets | sed -n 's/^*[[:space:]]*[[:digit:]]\+: source description="\(.*\)" prio=[[:digit:]]\+$/\1/p')
    #DEFAULT_SINK=$(pw-play --list-targets | sed -n 's/^*[[:space:]]*[[:digit:]]\+: sink description="\(.*\)" prio=[[:digit:]]\+$/\1/p')
    VOLUME=$(pamixer --get-volume-human)
    if [ "$VOLUME" = "muted" ] 
    then
	    LABEL=" "
    else
	    LABEL=""
    fi;
    case $1 in
        "up")
            pamixer --increase 2
            ;;
        "down")
            pamixer --decrease 2
            ;;
        "mute")
            pamixer --toggle-mute
            ;;
        *)

	
            echo ${LABEL}  ${VOLUME^}
    esac
}

main "$@"

