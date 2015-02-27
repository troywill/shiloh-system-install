#!/bin/bash

set -o verbose

cat /etc/locale.conf
echo 'LANG="en_US.UTF-8"' > /etc/locale.conf
cat /etc/locale.conf
