#!/bin/bash

set -o errexit
DEVICE="/dev/sda"
BS="1M"
COUNT=4
dd if=${DEVICE} of=SECTOR bs=$BS count=$COUNT
dd if=/dev/zero of=${DEVICE} bs=$BS count=$COUNT
