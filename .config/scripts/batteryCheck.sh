#!/bin/bash

BATT="$(acpi -b)"
notify-send "$BATT"
