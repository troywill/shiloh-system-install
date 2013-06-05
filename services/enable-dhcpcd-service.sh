#!/bin/bash

set -o nounset
set -o errexit
set -o verbose

DEVICE='enp0s25'

rm -vf '/etc/systemd/system/multi-user.target.wants/dhcpcd@eth0.service'
ln -s '/usr/lib/systemd/system/dhcpcd@.service' "/etc/systemd/system/multi-user.target.wants/dhcpcd@${DEVICE}.service"
