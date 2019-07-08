#!/bin/sh
ACCESSPOINT_NAME="MSI-GT70-$(cat /dev/urandom | env LC_CTYPE=C tr -cd 'a-f0-9' | head -c 4)"
INTERFACE_INTERNET="$(route | grep default | awk '{print $8}')"
INTERFACE_BROADCAST="$(iw dev | cut -c12-24 | sed -n 2p)"
#preparing for issues after reboot acces point
rfkill unblock wlan
nmcli r wifi off
create_ap --no-virt  $INTERFACE_BROADCAST $INTERFACE_INTERNET $ACCESSPOINT_NAME HSockgYMmyXX21
