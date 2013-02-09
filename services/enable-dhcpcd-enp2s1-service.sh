#!/bin/bash

set -o nounset
set -o errexit
set -o verbose

rm -v '/etc/systemd/system/multi-user.target.wants/dhcpcd@eth0.service'
ln -s '/usr/lib/systemd/system/dhcpcd@.service' '/etc/systemd/system/multi-user.target.wants/dhcpcd@enp2s1.service'
