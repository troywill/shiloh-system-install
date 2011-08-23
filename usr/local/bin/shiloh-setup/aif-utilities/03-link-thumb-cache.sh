#!/bin/bash
set -o errexit
cd /mnt/var/cache/pacman
pwd
ls -l *
mv -vf pkg pkg-hide
ln -s ../../../../var/cache/pacman/pkg
