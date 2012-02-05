#!/bin/bash
set -o errexit
set -o nounset
set -o verbose

mkdir --parent --verbose /mnt/stow
cp --interactive --archive /stow/network-perl /mnt/stow
cp --interactive stow /mnt/usr/local/bin/
cp --interactive stowrc /mnt/root/.stowrc
