#!/bin/bash
set -o verbose

cp --interactive --archive /stow/ /mnt/
cp --interactive stow2 /mnt/usr/local/bin/
cp --interactive stowrc /mnt/root/.stowrc



