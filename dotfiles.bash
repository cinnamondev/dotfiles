#!/bin/bash

# simple config thingymajigy

dir=$(pwd -P)

if ! pacman -Qi libnewt > /dev/null; then
	# Install libnewt (whiplash)
	echo "pls install libnewt so script look sexy"
	sudo -k pacman -S libnewt || exit $? # exit if it fails (ctr+c etc)
fi

# We're good to go :)

function addTrack {
	output=""
	echo "Add all graphical files to add here (I reccomend adding ~/.config/ to your clipboard)"
	while read line
	do
		# break if line is empty
		[ -z "$line" ] && break
		output="$output$line,"
	done
	echo $output >> "$dir/tracking.cfg"


	output=""
	echo "Add all console/basic/whatever files here"
	while read line
	do
		# break if line is empty
		[ -z "$line" ] && break
		output="$output$line,"
	done
	echo $output >> "$dir/trackingcli.cfg"

	# sed -e '$ s/.$//' 
}

function updateconsole {
	echo "a"
	files=$(cat $dir/trackingcli.cfg | sed -e '$ s/.$//')
	echo $files 
	cd $HOME
	eval "cp -r --parents ./{$files} $dir/console"
	cd $dir
}

function updategraphical {
	files=$(cat $dir/tracking.cfg | sed -e '$ s/.$//')
	cd $HOME
	eval "cp -r --parents ./{$files} $dir/graphical"
}

function installconsole {
	cp -r $dir/console/* $HOME --exclude .gitkeep
}

function installgraphical {
	cp -r $dir/graphical/* $HOME --exclude .gitkeep
}


# Menu loop
function menu {
CHOICE=$(
	whiptail --title "Choose an option" --menu "" 15 50 7 \
		"A." "Full config (bspwm etc)" \
		"B." "Basic config (zsh etc)"  \
		"C." "Update config" \
		"D." "Add files/folder to track" \
		"" "Exit" 3>&2 2>&1 1>&3
	)
	case $CHOICE in
		"A.")
			echo "full config"
			whiptail  --title "aa" --msgbox "lol" 8 88
			menu
		;;
		"B.")
			echo "partial config"
			menu
		;;
		"C.")
			echo "update config"
			menu
		;;
		"D.")
			echo "add ff"
			addTrack
			menu
		;;


		"")
			echo "exit"
		;;
	esac
	exit
}
updateconsole
#menu
