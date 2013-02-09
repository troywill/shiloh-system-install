#!/bin/bash

set -o nounset
INTERFACE="eth0"
systemctl enable dhcpcd@${INTERFACE}.service
