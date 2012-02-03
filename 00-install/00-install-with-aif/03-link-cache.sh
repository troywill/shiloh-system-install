#!/bin/bash
set -o errexit
set -o nounset

# This is an optional program
# Set up symbolic link to source packages
# Execute this program right before package installation

cd /mnt/var/cache/pacman
mv -vf pkg pkg-hide
ln -s ../../../../var/cache/pacman/pkg
