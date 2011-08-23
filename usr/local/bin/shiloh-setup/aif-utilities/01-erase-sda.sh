#!/bin/sh
# Danger Will Robinson
dd if=/dev/zero bs=1M count=1 of=/dev/sda
fdisk /dev/sda
