#!/bin/bash
set -o verbose

cp --interactive --archive /stow/ /mnt/
cp --interactive stow2 stowrc /mnt/usr/local/bin/
