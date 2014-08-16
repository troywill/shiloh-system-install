#!/bin/bash

set -o errexit
set -o nounset
set -o verbose
systemctl start mysqld
systemctl enable mysqld
