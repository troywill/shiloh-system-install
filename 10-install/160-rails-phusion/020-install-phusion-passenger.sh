#!/bin/sh

if [ "$UID" -ne "0" ]; then
    echo "Please run as root user"
    exit
fi

gem install passenger --no-ri --no-rdoc
