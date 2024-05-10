#!/bin/sh
acpi -b | awk -F'[,:%]' '{print $2, $3}' | {
	read -r status capacity

	if [ "$status" = Discharging -a "$capacity" -lt 7 ]; then
		mpv /home/nutmeg/.config/scripts/CrashPowerMacCard.wav volume=100
		notify-send -t 0 "Battery Low" "Please insert charger or computer will sleep" -i /home/nutmeg/.config/scripts/Sad_mac.jpg --app-name "BATTERY_EVENT_LISTENER"
	elif [ "$status" = Discharging -a "$capacity" -lt 12 ]; then
		mpv /home/nutmeg/.config/scripts/CrashPowerMacCard.wav volume=40
	fi
}
