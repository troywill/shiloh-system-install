#!/usr/bin/bash

set -o errexit
set -o nounset
set -o verbose

DEVICE="/dev/sda" # find DEVICE with /usr/bin/lsblk and edit this line
BS="1M"
COUNT=4
# exit
dd if=${DEVICE} of=SECTOR bs=$BS count=$COUNT
dd if=/dev/zero of=${DEVICE} bs=$BS count=$COUNT

dd if=${DEVICE} bs=1M count=$COUNT | hexdump -C


# Create a GUID partition table with parted
parted --script ${DEVICE} mklabel gpt
dd if=${DEVICE} bs=1M count=$COUNT | hexdump -C


# Create an EFI partition with parted
parted --script ${DEVICE} mkpart ESP fat32 1MiB 513MiB set 1 boot on

# Format the boot partition 
mkfs.vfat -F32 ${DEVICE}1

# Create a root partition with parted
parted --script ${DEVICE} mkpart primary ext4 513MiB 50%

# Format the root partition
LABEL="20150718" #change this!
mkfs.ext4 -v -L $LABEL ${DEVICE}2
