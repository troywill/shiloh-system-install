#!/bin/bash

set -o nounset
set -o errexit
LABEL="SD" #change this!
DEVICE="/dev/sdc2" #change this!
mkfs.ext4 -v -L $LABEL $DEVICE
