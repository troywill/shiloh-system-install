#!/bin/bash
# Set up symbolic link to source packages
# Execute this program right before package installation

set -o errexit
set -o nounset

cd /mnt/var/cache/pacman
pwd
mv -vf pkg pkg-hide
ln -s ../../../../var/cache/pacman/pkg
