#!/bin/bash

set -o nounset
set -o errexit
LABEL="20150601" #change this!
DEVICE="/dev/sdb2" #change this!
mkfs.ext4 -v -L $LABEL $DEVICE
