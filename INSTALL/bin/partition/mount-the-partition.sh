#!/bin/bash

set -o errexit
set -o nounset
DEVICE="/dev/sdb2" #change this!
mount --verbose $DEVICE /mnt
