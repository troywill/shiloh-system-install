#!/bin/bash
set -o errexit
set -o verbose

cd /mnt/var/cache/pacman
sudo unlink pkg
sudo mkdir /mnt/root.thumb
sudo ln --symbolic --verbose ../../../mnt/root.thumb/var/cache/pacman/pkg
