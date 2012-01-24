#!/bin/bash
set -o verbose

sudo cp --interactive --archive /stow/ /mnt/
sudo cp --interactive stow2 /mnt/usr/local/bin/
sudo cp --interactive stowrc /mnt/root/.stowrc




