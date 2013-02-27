#!/bin/bash

# if you prefer to use UUIDs or labels,
# add the -U or -L option
genfstab -pU /mnt >> /mnt/etc/fstab
