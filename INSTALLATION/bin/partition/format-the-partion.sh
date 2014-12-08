#!/bin/bash

set -o nounset
set -o errexit
LABEL="ANDROID" #change this!
DEVICE="/dev/sda3" #change this!
mkfs.ext4 -v -L $LABEL $DEVICE
