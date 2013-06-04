#!/bin/sh

ssh-keygen -t rsa -C"$(id -un)@$(hostname)-$(date --rfc-3339=date)"
