#!/bin/bash

set -o verbose
# if you prefer to use UUIDs or labels,
# add the -U or -L option
sudo genfstab -pU /mnt >> /mnt/etc/fstab
