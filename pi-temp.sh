#!/bin/bash

echo "{\"timestamp\":\"$(date +%Y-%m-%dT%H:%M:%S.%6N%:z)\",\"cpu\":\"$(($(cat /sys/class/thermal/thermal_zone0/temp)/1000))\",\"gpu\":\"$(vcgencmd measure_temp | grep  -o -E '[[:digit:]][[:digit:]].[[:digit:]]')\",\"unit\":\"c\"}"
