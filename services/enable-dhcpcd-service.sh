#!/bin/bash

set -o nounset
INTERFACE="enp2s1"
# INTERFACE="eth0"
# systemctl enable dhcpcd@${INTERFACE}.service
# systemctl disable dhcpcd@${INTERFACE}.service
echo ${INTERFACE}
systemctl enable dhcpcd@enp2s1.service
# systemctl disable dhcpcd@eth0.service
