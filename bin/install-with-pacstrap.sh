#!/bin/bash

set -o errexit
INSTALL="grub-bios os-prober"
DEVEL="base-devel git stow"
SYSTEM="ntp openssh rsync screen sudo wget"
EMACS="emacs-nox"
WIRELESS="wireless_tools wpa_supplicant"
pacstrap /mnt base $INSTALL $DEVEL $SYSTEM $EMACS $WIRELESS
