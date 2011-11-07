#!/bin/sh
cd /mnt/var/cache/pacman
unlink pkg
mkdir /mnt/root.thumb
ln -s ../../../mnt/root.thumb/var/cache/pacman/pkg
