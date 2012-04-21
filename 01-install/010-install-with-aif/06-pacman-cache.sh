#!/bin/bash
set -o errexit
set -o nounset
set -o verbose

cd /mnt/var/cache/pacman
unlink pkg
mkdir /mnt/root.thumb
ln --symbolic --verbose ../../../mnt/root.thumb/var/cache/pacman/pkg
