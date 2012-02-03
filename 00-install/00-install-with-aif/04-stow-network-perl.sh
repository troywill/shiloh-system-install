#!/bin/bash
set -o errexit
set -o nounset
set -o verbose

sudo cp --interactive --archive /stow/ /mnt/network-perl
sudo cp --interactive stow /mnt/usr/local/bin/
sudo cp --interactive stowrc /mnt/root/.stowrc
