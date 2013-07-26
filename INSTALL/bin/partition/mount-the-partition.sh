#!/bin/bash

set -o errexit
set -o nounset
DEVICE="/dev/sda2" #change this!
mount --verbose $DEVICE /mnt
