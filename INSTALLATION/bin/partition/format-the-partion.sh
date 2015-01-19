#!/bin/bash

set -o nounset
set -o errexit
LABEL="MINIMAL" #change this!
DEVICE="/dev/sda3" #change this!, e.g. DEVICE=/dev/sda3
mkfs.ext4 -v -L $LABEL $DEVICE
