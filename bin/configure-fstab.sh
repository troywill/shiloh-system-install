#!/bin/bash

cat /mnt/etc/fstab
genfstab -pU /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab
