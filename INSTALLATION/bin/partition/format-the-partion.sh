#!/bin/bash

set -o nounset
set -o errexit
LABEL="20150226" #change this!
DEVICE="/dev/sdxX" #change this!
mkfs.ext4 -v -L $LABEL $DEVICE
