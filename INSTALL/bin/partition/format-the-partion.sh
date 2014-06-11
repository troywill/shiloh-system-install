#!/bin/bash

set -o nounset
set -o errexit
LABEL="20140611" #change this!
DEVICE="/dev/XXXX" #change this!
mkfs.ext4 -v -L $LABEL $DEVICE
