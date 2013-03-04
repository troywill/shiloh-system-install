#!/bin/bash

set -o nounset
INTERFACE='wlp1s0'
sudo wpa_supplicant -B -i${INTERFACE} -c ./wpa_supplicant.conf 
sudo dhcpcd ${INTERFACE}
