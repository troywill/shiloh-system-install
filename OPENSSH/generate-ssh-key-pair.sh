#!/bin/sh

# ssh-keygen -b 521 -t ecdsa -C"$(id -un)@$(hostname)-$(date --rfc-3339=date)"
ssh-keygen -t dsa -C"$(id -un)@$(hostname)-$(date --rfc-3339=date)"
