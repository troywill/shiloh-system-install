#!/bin/bash

set -o nounset
set -o errexit
LABEL="asus" #change this!
DEVICE="/dev/sda2" #change this!
mkfs.ext4 -v -L $LABEL $DEVICE
