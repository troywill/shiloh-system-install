#!/bin/bash

set -o nounset
HOSTNAME="kangaroo" # change this!
echo $HOSTNAME > /etc/hostname
