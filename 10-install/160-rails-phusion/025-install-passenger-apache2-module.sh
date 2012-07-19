#!/bin/sh

if [ "$UID" -ne "0" ]; then
    echo "Please run as root user"
    exit
fi

passenger-install-apache2-module
