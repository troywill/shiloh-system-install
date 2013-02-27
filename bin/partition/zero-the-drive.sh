#!/bin/bash

DEVICE="/dev/sdb"
dd if=/dev/zero of=${DEVICE} bs=8M count=1
