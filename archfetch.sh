#!/bin/bash

clear

echo "========================================"
echo "        I USE ARCH BTW"
echo "========================================"
echo ""

echo "               .--."
echo "              |o_o |"
echo "              |:_/ |"
echo "             //   \\\\"
echo "            (|     | )"
echo "           /'\\_   _/\\"
echo "           \\___)=(___/"
echo ""

echo "----------------------------------------"
echo " SYSTEM STATS"
echo "----------------------------------------"

echo ""
echo "CPU Load:"
uptime

echo ""
echo "Memory:"
free -h | awk '/Mem:/ {print "Used: " $3 " / " $2}'

echo ""
echo "Disk:"
df -h / | awk 'NR==2 {print "Root Usage: " $3 " / " $2 " (" $5 ")"}'

echo ""
echo "Controllers:"
if ls /dev/input/js* 1> /dev/null 2>&1; then
    echo "Gamepad detected [OK]"
else
    echo "No controller detected [NO]"
fi

echo ""
echo "Audio:"
if pactl list short sinks | grep -q RUNNING; then
    echo "Audio active [OK]"
else
    echo "Audio idle/suspended"
fi

echo ""
echo "----------------------------------------"
echo "Arch Linux ARM Retro System Online"
echo "----------------------------------------"
