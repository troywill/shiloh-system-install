#!/bin/bash

set -o errexit
DEVICE="/dev/sdb" # find DEVICE with /usr/bin/lsblk and edit this line
BS="1M"
COUNT=4
dd if=${DEVICE} of=SECTOR bs=$BS count=$COUNT
dd if=/dev/zero of=${DEVICE} bs=$BS count=$COUNT
