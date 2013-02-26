#!/bin/bash

set -o errexit
set -o nounset
DEVICE="/dev/sdc2" #change this!
mount --verbose $DEVICE /mnt
