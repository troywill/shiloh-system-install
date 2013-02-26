#!/bin/bash

DEVICE="/dev/sdc"
dd if=/dev/zero of=${DEVICE} bs=8M count=1
