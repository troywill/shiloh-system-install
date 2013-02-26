#!/bin/bash

EXTRA_PACKAGES="base-devel emacs-nox git grub-bios ntp openssh os-prober rsync screen stow sudo wget wireless_tools"
pacstrap /mnt base $EXTRA_PACKAGES
