#!/bin/bash
set -o errexit
set -o nounset

ls -l /dev/disk/by-label

# The following dd will write zeros to the first Megabyte of your will erase your drive
# Because of the destructive nature of the command the rest of this file is commented out.
# Make a copy of this file, uncomment the following three lines, adjust the DRIVE variable to match your target drive

# DRIVE='/dev/sda'
# dd if=/dev/zero bs=1M count=1 of=/dev/sda
# fdisk /dev/sda
